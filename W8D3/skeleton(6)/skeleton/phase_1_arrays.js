Array.prototype.uniq = function() {
    let returnArr = []
    // debugger
    this.forEach(function(ele) {
        if (!returnArr.includes(ele)) returnArr.push(ele)
    } )
    return returnArr
}

// console.log([1,2,2,3,3,3].uniq())
Array.prototype.twoSum = function() {
    let pairArr = []
    for(let i = 0; i < this.length; i++) {
        for(let j = 0; j < this.length; j++) {
            if(this[i] + this[j] === 0) { //&& !pairArr.includes([j, i])) {
                pairArr.push([i, j])
            }
        }
    }
    return pairArr
}

Array.prototype.transpose = function() {
    let arr = new Array(this.length).fill(0).map(() => new Array(this.length).fill(0));
    
    // arr = Array.from(this.length, function() {
    //     new Array(this[0].length)
    // })
    // debugger
    for(let i = 0; i < this.length; i++) {
        for(let j = 0; j < this.length; j++) {
            // let temp = this[i][j]
            // this[i][j] = this[j][i]
            // this[j][i] = temp
            arr[i][j] = this[j][i]
        }
    }
    return arr
}