export default class HTMLParser {
    static parse(text) {
        const regex = /(<([^>]+)>)/ig

        text = text.replaceAll("<br>", " ")
        text = text.replaceAll(regex, "")
        return text.replaceAll("&nbsp;", " ")
    }
}