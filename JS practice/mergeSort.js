// Write an `Array.prototype.mergeSort` method that merge sorts an array. It
// should take an optional callback that compares two elements, returning -1 if 
// the first element should appear before the second, 0 if they are equal, and 1 
// if the first element should appear after the second. Define and use a helper 
// method, `merge(left, right, comparator)`, to merge the halves. 
//
// **IMPORTANT: Make sure to use a function declaration (`function merge`) as
// opposed to a function expression (`const merge = function`) for `merge`. Do
// NOT use the built-in `Array.prototype.sort` method in your implementation.**
//
// Here's a summary of the merge sort algorithm:
//
// Split the array into left and right halves, then merge sort them recursively
// until a base case is reached. Use a helper method, merge, to combine the
// halves in sorted order, and return the merged array.

const defaultCallback = function (num1, num2) {
    if (num1 < num2) {
        return -1;
    } else if (num1 === num2) {
        return 0;
    } else {
        return 1;
    }
};

Array.prototype.mergeSort = function (callback) {
    if (this.length <= 1) {return this};
    if (typeof callback !== "function") {
        callback = defaultCallback;
    }
    const mid = Math.floor(this.length / 2);
    const left = this.slice(0, mid).mergeSort(callback);
    const right = this.slice(mid).mergeSort(callback);
    return merge(left,right,callback)
}

function merge(left, right, callback) {
    let merge = [];
    while (left.length && right.length) {
        switch (callback(left[0], right[0])) {
            case -1:
                merge.push(left.shift());
                break;
            case 0:
                merge.push(left.shift());
                break;
            case 1:
                merge.push(right.shift());
                break;
        }
    }
    merge = merge.concat(left,right);
    return merged;
}