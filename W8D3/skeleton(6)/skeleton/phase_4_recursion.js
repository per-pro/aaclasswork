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
    fibs = []
    if (int === 1) {
        fibs = [1]
        return fibs
    } else if (int === 2) {
        fibs = [1, 1]
        return fibs
    }
    let nextFib = fibs[fibs.length - 1] + fibs[fibs.length - 2]
    return fibs
}