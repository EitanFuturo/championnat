import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["source", "output" ]

  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }

  getValues() {
    //console.log(this.sourceTarget.innerHTML)
    console.log(this.parse(this.sourceTarget.innerHTML))
  }

  //TODO: corregir método para que deje espacios con el enter. (hint: ver bien qué html agrega con los enter.)
  parse(text) {
    const regex = /(<([^>]+)>)/ig

    //text.replace("<div><br></div>", " ")
    text = text.replace(regex, "")
    return text.replace("&nbsp;", " ")
  }
}
