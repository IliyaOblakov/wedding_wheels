import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-down"
export default class extends Controller {
  connect() {

    // const element = document.getElementById("scroll-point")
    // e.preventDefault()


  }
   scroll(event) {
     console.log(this.element)
     event.preventDefault()
    scrollBy(0, 1000)
  }



}
