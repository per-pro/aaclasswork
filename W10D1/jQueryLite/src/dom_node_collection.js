class DOMNodeCollection {
    constructor(array){
        this.array = array 
    }

    html(string) {
        if (string) {
            this.array.forEach(node => {
                node.innerHTML = string
            })
        } else if (string === undefined) {
            return this.array[0].innerHTML
        }
    }

    empty() {
        this.array.forEach(node => {
            node.innerHTML = ""
        })
    }

    append(content) {
        if(typeof content === "object") {
            content = $l(content)
        } else if (typeof content === "string") {
            this.array.forEach(node => {
                node.innerHTML += content.outerHTML
            })
        } else if (typeof content === "HTMLElement") {
            this.array.forEach(node => {
                node.innerHTML += content.outerHTML

            });
        }
    };

    attr(element) {
        return element.attributes
    };

    addClass(...className){
        this.array.forEach(node => {
            node.classList.add(...className)  
        })
    }

    removeClass(...className) {
        if (className === []) {
            this.array.forEach(node => {
                let cl = Array.from(node.classList)
                node.classList.remove(...cl)
            })
        } else {
            this.array.forEach(node => {
                node.classList.remove(...className)
            })
        }
            


    }


}

module.exports = DOMNodeCollection
