import { Controller } from "@hotwired/stimulus";
import Masonry from "masonry-layout";

export default class extends Controller {
  static targets = ['grid'];

  reset() {
    const grid = this.gridTarget
    const msnry = new Masonry(grid, {
      itemSelector: '.grid-item',
      gutter: 10,
      transitionDuration: '0.6s',
      percentPosition: true,
      columnWidth: '.grid-sizer'
    });
  }
}
