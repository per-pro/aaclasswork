Array.prototype.bubbleSort = function() {
    let sorted = false
    while (!sorted) {
        sorted = true
        let i = 0
        while (i < this.length - 1) {
            if (this[i + 1] < this[i]) {
                sorted = false
                [this[i], this[i + 1]] = [this[i + 1], this[i]]
                // let temp = this[i + 1]
                // this[i + 1] = this[i]
                // this[i] = temp
            }
            i++;
        }
    }
    return this
}

String.prototype.substrings = function() {
    let strings = []
    for(let i = 0; i < this.length; i++) {
        for(let j = i + 1; j < this.length; j++) {
            strings.push(this.slice(i, j))
        }
    }
    return strings
}

