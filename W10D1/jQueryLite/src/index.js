const DOMNodeCollection = require("./dom_node_collection");


window.$l = object => {
    if (object instanceof HTMLElement) return new DOMNodeCollection([object])
    else if (typeof object === "string"){
        const matches = document.querySelectorAll(object); 
        return new DOMNodeCollection([matches])
    }
}