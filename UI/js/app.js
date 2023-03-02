$(document).ready(function () {
  $(".alert").fadeOut();

  window.addEventListener("message", (event) => {
    if (event.data.image == "hide") return $(".alert").fadeOut();

    $(".alert").fadeIn();
    $(".alert").attr("src", `images/${event.data.image}.png`);
  });
});
