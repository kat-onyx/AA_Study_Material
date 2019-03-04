
Array.prototype.mergeSort = function(func) {
    if (this.length <= 1) {
        return this;
    }

    if (!func) {
        func = function(x, y) {
            if (x > y) {
                return 1;
            } else if (x < y) {
                return -1;
            } else {
                return 0;
            }
        }
    }
    let mid = Math.floor(this.length / 2);
    let left = this.slice(0, mid).mergeSort(func);
    let right = this.slice(mid).mergeSort(func);

    left.merge(right, func);
}

Array.prototype.merge = function(array, func) {
    let merged = [];

    while (array.length && this.length) {
        if (func(this[0], array[0]) === 1) {
            merged.push(array.shift());
        } else if (func(this[0], array[0]) === -1) {
            merged.push(this.shift());
        } else {
            merged.push(this.shift());
        }
    }

    merged.concat(right).concat(left);
    return merged;
}