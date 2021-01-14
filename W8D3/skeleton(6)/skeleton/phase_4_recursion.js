let range = function(start, end) {
    
    if (start === end) {
        return [end]
    }
    return [start].concat(range(start+1, end))
}

let sumRec = function(arr) {
    if (arr.length === 1) {
        return arr[0]
    }

    return arr[0] + sumRec(arr.slice(1,arr.length))
}

let exponent = function(base)