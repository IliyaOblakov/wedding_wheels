import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-down"
export default class extends Controller {
  connect() {
    console.log('hello from controller scroll')
    // const element = document.getElementById("scroll-point")
    // e.preventDefault()


  }
   scroll(event) {
     event.preventDefault()
    scrollBy(0, 1000)
  }



}
