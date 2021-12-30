import { Controller } from "@hotwired/stimulus";
import Masonry from "masonry-layout";


export default class extends Controller {
  static targets = ['card', 'artistName', 'artistDetails', 'quote', 'quotedBy', 'underline'];


  toggle() {
    this.cardTarget.classList.toggle("front-card");
    this.cardTarget.classList.toggle("back-card");
    this.artistDetailsTarget.classList.toggle("d-none");
    this.artistNameTarget.classList.toggle("d-none");

    const colors =["56, 176, 208, 1", "151, 124, 186, 1", "242, 86, 101, 0.79", "112, 198, 171, 1", "246, 192, 48, 1"]
    const randColor = colors[Math.floor(Math.random() * colors.length)];

    this.cardTarget.style.border = `4px solid rgba(${randColor})`;
    this.quoteTarget.style.color = `rgba(${randColor})`;
    this.quotedByTarget.style.color = `rgba(${randColor})`;

    const icons = this.artistDetailsTarget.querySelectorAll('i');
    icons.forEach(icon => {
      icon.style.color = `rgba(${randColor})`;
    });

    const underline = this.artistDetailsTarget.querySelector('.underline');
    underline.style.backgroundColor = `rgba(${randColor})`;

  }
}

// when click anywhere outside of the target return to initial state
// you did this before with outside.modal ting
