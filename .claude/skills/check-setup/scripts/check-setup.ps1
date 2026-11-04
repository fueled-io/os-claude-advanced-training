# Setup check for "We're All Software Developers Now" (Windows PowerShell version).
# Read-only: it looks at what's installed and how the repo is set up, and changes nothing.
# Usage, from inside the repo folder in PowerShell:
#   powershell -ExecutionPolicy Bypass -File .claude\skills\check-setup\scripts\check-setup.ps1

$Upstream = "fueled-io/os-claude-advanced-training"
$RepoName = "os-claude-advanced-training"
$script:Fails = 0
$script:Warns = 0

function Pass($msg) { Write-Output "PASS  $msg" }
function Fail($msg, $fix) { Write-Output "FAIL  $msg"; Write-Output "      Fix: $fix"; $script:Fails++ }
function Warn($msg, $note) { Write-Output "WARN  $msg"; Write-Output "      Note: $note"; $script:Warns++ }
function Info($msg) { Write-Output "INFO  $msg" }
function Have($cmd) { [bool](Get-Command $cmd -ErrorAction SilentlyContinue) }
function Run($exe, [string[]]$argList) {
  try { $out = & $exe @argList 2>$null; if ($LASTEXITCODE -eq 0) { return ($out | Out-String).Trim() } } catch {}
  return ""
}

Write-Output "Setup check for $RepoName"
Info ("Computer: Windows " + [System.Environment]::OSVersion.Version.ToString() + " (PowerShell " + $PSVersionTable.PSVersion.ToString() + ")")
Write-Output ""

Write-Output "== Tools"
if (Have git) { Pass ("Git installed: " + (Run git @('--version'))) }
else { Fail "Git is not installed, or this window was open before you installed it" "close this window, open a new one, try again; otherwise docs/install-github-cli.md step 3" }

if (Have gh) { Pass ("GitHub CLI installed: " + ((Run gh @('--version')) -split "`n")[0]) }
else { Fail "GitHub CLI (gh) is not installed, or this window was open before you installed it" "close this window, open a new one, try again; otherwise docs/install-github-cli.md step 4" }

if (Have claude) { Pass ("Claude Code installed: " + ((Run claude @('--version')) -split "`n")[0]) }
else { Fail "Claude Code (claude) not found in this window" "close every terminal window and open a new one; otherwise docs/install-claude-code.md steps 2 and 3" }

$Py = Run python @('--version')
if ($Py) { Pass "Python installed: $Py" }
else { Info "Python not found. Only needed from Session 4 (docs/spreadsheets-and-scripts.md)" }
Write-Output ""

Write-Output "== Accounts"
$GhUser = ""
if (Have gh) {
  & gh auth status *> $null
  if ($LASTEXITCODE -eq 0) {
    $GhUser = Run gh @('api', 'user', '--jq', '.login')
    Pass "Signed in to GitHub as $GhUser"
  } else {
    Fail "Not signed in to GitHub" "run: gh auth login (docs/install-github-cli.md step 5)"
  }
}

if (Have git) {
  $Name = Run git @('config', 'user.name')
  $Email = Run git @('config', 'user.email')
  if ($Name) { Pass "Git name set: $Name" } else { Fail "Git doesn't know your name" "docs/install-github-cli.md step 7" }
  if ($Email) {
    if ($Email -like "*@opensend.com") { Pass "Git email set: $Email" }
    else { Warn "Git email is $Email" "the series uses your Opensend email; docs/install-github-cli.md step 7" }
  } else { Fail "Git doesn't know your email" "docs/install-github-cli.md step 7" }
}
Write-Output ""

Write-Output "== Your copy of the repo"
$Top = ""
if (Have git) { $Top = Run git @('rev-parse', '--show-toplevel') }
if (-not $Top) {
  Warn "This window isn't inside a Git repo" "if you haven't made your copy yet, that's expected before Session 2. Otherwise: cd $RepoName, then run this again"
} else {
  $Origin = Run git @('remote', 'get-url', 'origin')
  $Up = Run git @('remote', 'get-url', 'upstream')

  if ($Origin -notlike "*$RepoName*") { Warn "This repo doesn't look like $RepoName ($Top)" "cd into the $RepoName folder and run this again" }

  if (-not $Origin) { Fail "No 'origin' remote" "ask Claude Code, or Sean, to look at: git remote -v" }
  elseif ($Origin -like "*fueled-io/$RepoName*") { Fail "Your copy points at Opensend's repo, not your fork. Only Sean can push there" "run: gh repo fork --remote   (inside this folder; it makes your fork and points pushes at it)" }
  elseif ($Origin -like "*$RepoName*") { Pass "Pushes go to your fork: $Origin" }

  if ($Up -like "*fueled-io/$RepoName*") { Pass "Opensend's repo is linked as 'upstream'" }
  elseif (-not $Up) { Warn "No 'upstream' remote" "gh repo fork --clone normally adds it. Without it, pull requests may not find Opensend's repo" }
  else { Warn "'upstream' is $Up" "expected $Upstream" }

  if (Have gh) {
    $Def = Run gh @('repo', 'set-default', '--view')
    if ($Def -eq $Upstream) { Pass "gh opens pull requests against $Upstream" }
    else { Warn ("gh's default repo is '" + ($(if ($Def) { $Def } else { 'not set' })) + "'") "run: gh repo set-default $Upstream" }
  }

  $Branch = Run git @('branch', '--show-current')
  if (-not $Branch -or $Branch -eq "main") { Warn "You're not on your own branch" "make it once with: git switch -c first-last (your name), or move to it with: git switch first-last" }
  else { Pass "On your branch: $Branch" }

  $Committed = (Run git @('ls-tree', '-r', '--name-only', 'HEAD', '--', 'raw', 'derived', 'outputs/history')) -split "`n" |
    Where-Object { $_ -and ($_ -notlike "*/.gitkeep") }
  if ($Committed) { Fail ("These real-data files are committed, and this repo is public: " + ($Committed -join ", ")) "don't push. Tell Sean, and ask Claude Code to remove them from the commit (CONTRIBUTING.md)" }
  else { Pass "Nothing from raw/, derived/, or outputs/history/ is committed" }

  $Staged = (Run git @('diff', '--cached', '--name-only')) -split "`n" |
    Where-Object { $_ -match '^(raw|derived|outputs/history)/' }
  if ($Staged) { Fail ("Real-data files are staged for the next commit: " + ($Staged -join ", ")) "unstage them: git restore --staged <file>" }

  if ((Have gh) -and $GhUser) {
    $Pr = Run gh @('pr', 'list', '--repo', $Upstream, '--author', $GhUser, '--state', 'open', '--json', 'url', '--jq', '.[0].url')
    if ($Pr -and $Pr -ne "null") { Pass "Your pull request: $Pr" }
    else { Info "No open pull request yet (Session 2, step 10 opens it)" }
  }
}

Write-Output ""
if ($script:Fails -eq 0) { Write-Output "Result: all required checks passed ($($script:Warns) note(s))." }
else { Write-Output "Result: $($script:Fails) problem(s) to fix, $($script:Warns) note(s). Fix the first FAIL, then run this again." }
exit 0
