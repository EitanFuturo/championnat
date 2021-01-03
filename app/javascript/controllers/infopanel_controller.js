import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["source", "output" ]

  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }

  //TODO: parcear el html para que quede sólo el texto y poder contar, caracteres, etc.
  getValues() {
    console.log(this.sourceTarget.innerHTML)
  }
}
