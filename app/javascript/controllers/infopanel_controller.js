import { Controller } from "stimulus"
import HTMLParser from "../utils/html_parser"

export default class extends Controller {
  static targets = ["source", "output" ]

  connect() {
    this.outputTarget.textContent = '3000 caracteres restantes.'
  }

  getValues() {
    const parsedText = HTMLParser.parse(this.sourceTarget.innerHTML)
    this.showCharactersCount(parsedText)
  }

  //TODO: Ver por qué a veces no cuenta bien los caracteres con enters. Chequear el parser.
  showCharactersCount(text) {
    this.outputTarget.textContent = `${3000 - text.length} caracteres restantes.`
  }

}
