#!/usr/bin/env bash
# Setup check for "We're All Software Developers Now".
# Read-only: it looks at what's installed and how the repo is set up, and changes nothing.
# Mac: run it in Terminal. Windows: run it in Git Bash, or use check-setup.ps1 in PowerShell.
# Usage, from inside the repo folder:
#   bash .claude/skills/check-setup/scripts/check-setup.sh

UPSTREAM="fueled-io/os-claude-advanced-training"
REPO_NAME="os-claude-advanced-training"
fails=0
warns=0

pass() { printf 'PASS  %s\n' "$1"; }
fail() { printf 'FAIL  %s\n      Fix: %s\n' "$1" "$2"; fails=$((fails + 1)); }
warn() { printf 'WARN  %s\n      Note: %s\n' "$1" "$2"; warns=$((warns + 1)); }
info() { printf 'INFO  %s\n' "$1"; }
have() { command -v "$1" >/dev/null 2>&1; }

echo "Setup check for $REPO_NAME"
case "$(uname -s 2>/dev/null)" in
  Darwin) OS=mac; info "Computer: Mac (macOS $(sw_vers -productVersion 2>/dev/null))" ;;
  MINGW*|MSYS*|CYGWIN*) OS=windows; info "Computer: Windows (Git Bash)" ;;
  *) OS=other; info "Computer: $(uname -s 2>/dev/null)" ;;
esac
echo

echo "== Tools"
if have git; then pass "Git installed: $(git --version)"
else fail "Git is not installed, or this terminal was open before you installed it" "close this terminal, open a new one, try again; otherwise docs/install-github-cli.md step 3"; fi

if [ "$OS" = mac ]; then
  if have brew; then pass "Homebrew installed: $(brew --version 2>/dev/null | head -1)"
  else warn "Homebrew not found" "only needed to install gh on a Mac. If gh is missing too, see docs/install-github-cli.md step 4 (including the 'Next steps' commands)"; fi
fi

if have gh; then pass "GitHub CLI installed: $(gh --version | head -1)"
else fail "GitHub CLI (gh) is not installed, or this terminal was open before you installed it" "close this terminal, open a new one, try again; otherwise docs/install-github-cli.md step 4"; fi

if have claude; then pass "Claude Code installed: $(claude --version 2>/dev/null | head -1)"
else fail "Claude Code (claude) not found in this terminal" "docs/install-claude-code.md steps 2 and 3 (including the PATH fix)"; fi
echo

echo "== Accounts"
GH_USER=""
if have gh; then
  if gh auth status >/dev/null 2>&1; then
    GH_USER="$(gh api user --jq .login 2>/dev/null)"
    pass "Signed in to GitHub as ${GH_USER:-(unknown)}"
  else
    fail "Not signed in to GitHub" "run: gh auth login (docs/install-github-cli.md step 5)"
  fi
fi

if have git; then
  NAME="$(git config user.name)"
  EMAIL="$(git config user.email)"
  if [ -n "$NAME" ]; then pass "Git name set: $NAME"
  else fail "Git doesn't know your name" "docs/install-github-cli.md step 7"; fi
  if [ -n "$EMAIL" ]; then
    case "$EMAIL" in
      *@opensend.com) pass "Git email set: $EMAIL" ;;
      *) warn "Git email is $EMAIL" "the series uses your Opensend email; docs/install-github-cli.md step 7" ;;
    esac
  else fail "Git doesn't know your email" "docs/install-github-cli.md step 7"; fi
fi
echo

echo "== Your copy of the repo"
if ! have git || ! git rev-parse --show-toplevel >/dev/null 2>&1; then
  warn "This terminal isn't inside a Git repo" "if you haven't made your copy yet, that's expected before Session 2. Otherwise: cd $REPO_NAME, then run this again"
else
  TOP="$(git rev-parse --show-toplevel)"
  ORIGIN="$(git remote get-url origin 2>/dev/null)"
  UP="$(git remote get-url upstream 2>/dev/null)"
  case "$ORIGIN" in
    *"$REPO_NAME"*) ;;
    *) warn "This repo doesn't look like $REPO_NAME ($TOP)" "cd into the $REPO_NAME folder and run this again" ;;
  esac

  case "$ORIGIN" in
    *fueled-io/"$REPO_NAME"*)
      fail "Your copy points at Opensend's repo, not your fork. Only Sean can push there" "run: gh repo fork --remote   (inside this folder; it makes your fork and points pushes at it)" ;;
    *"$REPO_NAME"*)
      pass "Pushes go to your fork: $ORIGIN" ;;
    "") fail "No 'origin' remote" "ask Claude Code, or Sean, to look at: git remote -v" ;;
  esac

  case "$UP" in
    *fueled-io/"$REPO_NAME"*) pass "Opensend's repo is linked as 'upstream'" ;;
    "") warn "No 'upstream' remote" "gh repo fork --clone normally adds it. Without it, pull requests may not find Opensend's repo" ;;
    *) warn "'upstream' is $UP" "expected $UPSTREAM" ;;
  esac

  if have gh; then
    DEF="$(gh repo set-default --view 2>/dev/null)"
    if [ "$DEF" = "$UPSTREAM" ]; then pass "gh opens pull requests against $UPSTREAM"
    else warn "gh's default repo is '${DEF:-not set}'" "run: gh repo set-default $UPSTREAM"; fi
  fi

  BRANCH="$(git branch --show-current 2>/dev/null)"
  if [ "$BRANCH" = main ] || [ -z "$BRANCH" ]; then
    warn "You're on '${BRANCH:-no branch}', not your own branch" "make it once with: git switch -c first-last (your name), or move to it with: git switch first-last"
  else
    pass "On your branch: $BRANCH"
  fi

  BAD="$(git ls-tree -r --name-only HEAD -- raw derived outputs/history 2>/dev/null | grep -v '/\.gitkeep$')"
  if [ -n "$BAD" ]; then
    fail "These real-data files are committed, and this repo is public:
$(printf '%s\n' "$BAD" | sed 's/^/        /')" "don't push. Tell Sean, and ask Claude Code to remove them from the commit (CONTRIBUTING.md)"
  else
    pass "Nothing from raw/, derived/, or outputs/history/ is committed"
  fi

  STAGED="$(git diff --cached --name-only 2>/dev/null | grep -E '^(raw|derived|outputs/history)/' )"
  if [ -n "$STAGED" ]; then
    fail "Real-data files are staged for the next commit: $STAGED" "unstage them: git restore --staged <file>"
  fi

  if have gh && [ -n "$GH_USER" ]; then
    PR="$(gh pr list --repo "$UPSTREAM" --author "$GH_USER" --state open --json number,url --jq '.[0] | "#\(.number) \(.url)"' 2>/dev/null)"
    if [ -n "$PR" ] && [ "$PR" != "null" ]; then pass "Your pull request: $PR"
    else info "No open pull request yet (Session 2, step 10 opens it)"; fi
  fi
fi

echo
if [ "$fails" -eq 0 ]; then
  echo "Result: all required checks passed ($warns note(s))."
else
  echo "Result: $fails problem(s) to fix, $warns note(s). Fix the first FAIL, then run this again."
fi
exit 0
