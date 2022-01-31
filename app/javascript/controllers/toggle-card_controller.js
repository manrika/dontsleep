import { Controller } from "@hotwired/stimulus";
import { useClickOutside } from "stimulus-use";


export default class extends Controller {
  static targets = ['frontCard', 'artistName', 'backCard', 'quote', 'quotedBy', 'underline'];

  connect() {
    // useClickOutside(this);
  }

  toggle() {
    this.frontCardTarget.classList.toggle("d-none");
    this.backCardTarget.classList.toggle("d-none");
  }

  clickOutside() {
    this.frontCardTarget.classList.remove("d-none");
    this.backCardTarget.classList.add("d-none");
    this.cardTarget.style.border = "none";
    this.cardTarget.classList.add("front-card");
    this.cardTarget.classList.remove("back-card");
    this.artistDetailsTarget.classList.add("d-none");
    this.artistNameTarget.classList.remove("d-none");
  }
}
