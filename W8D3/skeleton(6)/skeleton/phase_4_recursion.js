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

let exponentA = function(base, exponent) {
    if (exponent === 0) {
        return 1
    }
    return base * exponentA(base, exponent - 1)
}

let exponentB = function(base, exponent) {
    if (exponent === 0) {
        return 1
    } else if (exponent === 1) {
        return base
    } 
    if (exponent % 2 === 0) {
        return exponentB(base, exponent / 2) ** 2
    } else {
        return base * (exponentB(base, (exponent - 1)/2) ** 2)
    }
}

let fib = function(int) {
    if (int === 1) {
        return [1]
    } else if (int === 2) {
        return [1, 1]
    }
    let prevFib = fib(int - 1)
    return prevFib.concat(prevFib[prevFib.length - 1] + prevFib[prevFib.length - 2])
}

let deepDup = function(arr) {
    if (arr.length === 0) {
        return []
    }
    
}