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

// Masonry init function
const masonryInit = (tabGrid) => {
  console.log("masonry init");
  const grid = document.querySelector(tabGrid);

  const masonry = new Masonry(grid, {
    itemSelector: '.grid-item',
    gutter: 10,
    transitionDuration: '0.6s',
    percentPosition: true,
    columnWidth: '.grid-sizer'
  });
};

window.onload = () => {
  console.log("window loaded");
  masonryInit('#pills-home .grid');
};

// Set masonry effect on All tab
const allTab = document.querySelectorAll('#pills-tab a')[0];

$(allTab).on('shown.bs.tab', function (e) {
  console.log("SETTING masonry effect for home tab");
  masonryInit('#pills-home .grid');
  console.log("SET for home tab");
});

// Select artists nav item
const artistNavItem = document.querySelector('.artists-nav-item');
const event = new Event('build');

artistNavItem.addEventListener('build', (event) => {
  console.log('clicked nav item');


  // location.reload();
  event.preventDefault();
}, false);

artistNavItem.dispatchEvent(event);

// Set masonry effect on All tab
$(allTab).on('show.bs.tab', function (e) {
    console.log("SETTING masonry effect for home tab");
    masonryInit('#pills-home .grid');
    console.log("SET for home tab");
});



// Set masonry effect on Recording tab
const recTab = document.querySelectorAll('#pills-tab a')[1];

$(recTab).on('shown.bs.tab', function (e) {
    console.log("SETTING masonry effect for recording tab");
    masonryInit('#pills-profile .grid');
    console.log("SET for recording tab");
});

// Set masonry effect on Management tab
const mngTab = document.querySelectorAll('#pills-tab a')[2];

$(mngTab).on('shown.bs.tab', function (e) {
    console.log("SETTING masonry effect for mng tab");
    masonryInit('#pills-contact .grid');
    console.log("SET for mng tab");
});

// // Hamburger icon animation
// $(document).ready(function () {
//   $('#nav-icon1,#nav-icon2,#nav-icon3,#nav-icon4').click(function () {
//     $(this).toggleClass('open');
//   });
// });
