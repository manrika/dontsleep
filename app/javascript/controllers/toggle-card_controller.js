import { Controller } from "@hotwired/stimulus";
import { useClickOutside } from "stimulus-use";


export default class extends Controller {
  static targets = ['card', 'artistName', 'artistDetails', 'quote', 'quotedBy', 'underline'];

  connect() {
    console.log("toggle card connected");
    // useClickOutside(this);
  }

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

  clickOutside() {
    console.log("outside bwoi");
    console.log(this.cardTarget);
    this.cardTarget.style.border = "none";
    this.cardTarget.classList.add("front-card");
    this.cardTarget.classList.remove("back-card");
    this.artistDetailsTarget.classList.add("d-none");
    this.artistNameTarget.classList.remove("d-none");
  }
}
