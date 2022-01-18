import Masonry from "masonry-layout";

// Masonry init function
const masonryInitt = (tabGrid) => {
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

// Set All grid on page change

// METHOD 1
// const initMasonry = () => {
//   console.log("initializing masonry on page change");
//   masonryInit('.grid');
// };

// $(document).ready(initMasonry);

//METHOD 2
$(function() {
  console.log("another doc ready ting");
  masonryInitt('#pills-home .grid');
});

// // Set masonry effect on All tab
// const allTab = document.querySelectorAll('#pills-tab a')[0];

// $(allTab).on('shown.bs.tab', function (e) {
//   console.log("SETTING masonry effect for home tab");
//   masonryInit('#pills-home .grid');
//   console.log("SET for home tab");
// });


// // Set masonry effect on Recording tab
// const recTab = document.querySelectorAll('#pills-tab a')[1];

// $(recTab).on('shown.bs.tab', function (e) {
//     console.log("SETTING masonry effect for recording tab");
//     masonryInit('#pills-profile .grid');
//     console.log("SET for recording tab");
// });

// // Set masonry effect on Management tab
// const mngTab = document.querySelectorAll('#pills-tab a')[2];

// $(mngTab).on('shown.bs.tab', function (e) {
//     console.log("SETTING masonry effect for mng tab");
//     masonryInit('#pills-contact .grid');
//     console.log("SET for mng tab");
// });
