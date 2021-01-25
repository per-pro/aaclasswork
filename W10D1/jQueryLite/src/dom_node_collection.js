class DOMNodeCollection {
    constructor(array){
        this.array = array 
    }

    html(string = null) {
        if (string) {
            this.forEach(node => {
                node.innerHTML = string
            })
        } else if (!string) {
            return this[0].innerHTML
        }
    }

    empty() {
        this.html("")
    }

    append(content) {
        if(typeof content === "object") {
            content = $l(content)
        } else if (typeof content === "string") {
            this.forEach(node => {
                node.innerHTML += content.outerHTML
            })
        } else if (typeof content === "") {

        }
    }
}








module.exports = DOMNodeCollection


