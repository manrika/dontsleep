// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "controllers"
import "bootstrap"

import Masonry from "masonry-layout";

window.onload = () => {
  console.log("window loaded");
  const grid = document.querySelector('.grid');

  const masonry = new Masonry(grid, {
    itemSelector: '.grid-item',
    gutter: 10,
    transitionDuration: '0.6s',
    percentPosition: true,
    columnWidth: '.grid-sizer'
  });
};

// // Hamburger icon animation
// $(document).ready(function () {
//   $('#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').click(function () {
//     $(this).toggleClass('open');
//   });
// });
