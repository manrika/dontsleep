import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['images'];

  scrollleft() {
    this.imagesTarget.scrollLeft -= window.innerWidth
  }

  scrollright() {
    this.imagesTarget.scrollLeft += window.innerWidth
  }

}
