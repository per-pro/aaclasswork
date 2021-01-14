Array.prototype.bubbleSort = function() {
    let sorted = false
    while (!sorted) {
        sorted = true
        let i = 0
        while (i < this.length - 1) {
            if (this[i + 1] < this[i]) {
                sorted = false
                // [this[i], this[i + 1]] = [this[i + 1], this[i]]
                let temp = this[i + 1]
                this[i + 1] = this[i]
                this[i] = temp
            }
            i++;
        }
    }
    return this
}

