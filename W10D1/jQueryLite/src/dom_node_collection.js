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
        } else if (typeof content === "HTMLElement") {
            this.forEach(node => {
                node.innerHTML += content.outerHTML

            });
        }
    };

    attr(element) {
        return element.attributes
    };

    addClass(...className){
        if (typeof className === "array") {
            
        }else if (typeof className === "string"){

        }

    }

    removeClass(...className = null){
        if (!className){

        }else if (typeof className === "array") {
            
        }else if (typeof className === "string"){

        }


    }


}








module.exports = DOMNodeCollection


