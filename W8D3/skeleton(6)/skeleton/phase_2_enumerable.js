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