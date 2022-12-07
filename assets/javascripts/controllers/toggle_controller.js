import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["element"]
  static classes = ["visibility"]

  toggle() {
    this.elementTarget.classList.toggle(this.visibilityClass)
  }
}
