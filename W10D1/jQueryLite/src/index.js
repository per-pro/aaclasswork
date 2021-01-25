const dmc = require("/Users/trevor/Desktop/cloned/aaclasswork/W10D1/jQueryLite/src/dom_node_collection.jsz");



window.$l = object => {
    if (object instanceof HTMLElement){
        const matches = document.querySelectorAll("object");
        let matchesArr = DOMNodeCollection.from(matches)
        return matchesArr;
    } else if (object instanceof String){
        const matches = document.querySelectorAll(object); 
        let matchesArr =  DOMNodeCollection.from(matches)
        return matchesArr;
    }
}
