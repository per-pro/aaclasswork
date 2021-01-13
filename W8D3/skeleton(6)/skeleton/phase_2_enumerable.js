Array.prototype.myEach = function(cb) {
    this.forEach(function(ele) {
        cb(ele)
    })
}

let negate = function(ele) {
    return ele *= -1
}

Array.prototype.myMap = function(cb) {
    let mapArr = []
    let getResult = function(ele) {
        mapArr.push(cb(ele))
    }
    this.myEach(getResult)
    return mapArr
}

Array.prototype.myReduce = function(cb, initialVal) {
    let arr = this
    if (initialVal === undefined) {
        initialVal = this[0]
        arr = this.slice(1,this.length)
    }
    let accumulator = initialVal
    let acc = function(ele) {
        accumulator = cb(accumulator, ele)
    }
    arr.myEach(acc)
    return accumulator
}