// Turns a page of <section class="slide"> elements into a one-at-a-time deck.
// Without this script (or when printing) every slide shows, stacked.
//
// Keys: → / Space / PageDown next · ← / PageUp previous · Home / End · F full screen
// The slide number lives in the address (#3), so a refresh keeps your place.
(function () {
  var slides = Array.prototype.slice.call(document.querySelectorAll(".slide"));
  if (slides.length === 0) return;
  document.body.classList.add("deck-on");

  var controls = document.createElement("nav");
  controls.className = "controls";
  controls.innerHTML =
    '<a href="index.html">All sessions</a>' +
    '<span class="nav">' +
    '<button type="button" data-go="-1" aria-label="Previous slide">←</button>' +
    '<span class="count" aria-live="polite"></span>' +
    '<button type="button" data-go="1" aria-label="Next slide">→</button>' +
    "</span>" +
    '<button type="button" data-full aria-label="Full screen">Full screen</button>';
  document.body.appendChild(controls);
  var count = controls.querySelector(".count");

  var current = 0;
  function show(i) {
    current = Math.max(0, Math.min(slides.length - 1, i));
    slides.forEach(function (s, n) { s.classList.toggle("active", n === current); });
    count.textContent = current + 1 + " / " + slides.length;
    if (location.hash !== "#" + (current + 1)) history.replaceState(null, "", "#" + (current + 1));
  }
  function fromHash() {
    var n = parseInt(location.hash.slice(1), 10);
    return isNaN(n) ? 0 : n - 1;
  }
  function fullScreen() {
    if (document.fullscreenElement) document.exitFullscreen();
    else if (document.documentElement.requestFullscreen) document.documentElement.requestFullscreen();
  }

  controls.addEventListener("click", function (e) {
    var b = e.target.closest("button");
    if (!b) return;
    if (b.hasAttribute("data-full")) fullScreen();
    else show(current + parseInt(b.getAttribute("data-go"), 10));
  });
  document.addEventListener("keydown", function (e) {
    if (e.metaKey || e.ctrlKey || e.altKey) return;
    switch (e.key) {
      case "ArrowRight": case "PageDown": case " ": case "ArrowDown": e.preventDefault(); show(current + 1); break;
      case "ArrowLeft": case "PageUp": case "ArrowUp": e.preventDefault(); show(current - 1); break;
      case "Home": e.preventDefault(); show(0); break;
      case "End": e.preventDefault(); show(slides.length - 1); break;
      case "f": case "F": fullScreen(); break;
    }
  });
  window.addEventListener("hashchange", function () { show(fromHash()); });
  show(fromHash());
})();
