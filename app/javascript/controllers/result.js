for(var i = 0; i < 1000; i++) {
  //get random dimensions
  var x = Math.random() * 120;
  var y = Math.random() * 50;
  var d = Math.random() * 4;
  var s = Math.random() * 2 + 1.5;
  //create new element and add to html
  var star = document.createElement("div");
  star.classList.add("star");
  var sky = document.getElementById("starry_sky");
  sky.appendChild(star);

  star.style.width = d + "px";
  star.style.height = d + "px";
  star.style.top = y + "%";
  star.style.left = x + "%";
  star.style.animationDuration = s + "s";
}
