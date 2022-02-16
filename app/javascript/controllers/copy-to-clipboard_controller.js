import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['textArea'];

  connect() {
  }

  copy() {
    const text = this.textAreaTarget.innerText;
    navigator.clipboard.writeText(text);
    alert("Emails have been copied to clipboard :)");
  }

}
