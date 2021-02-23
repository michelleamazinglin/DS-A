// Write an `Array.prototype.median` method that returns the median of elements
// in an array. If the length is even, return the average of the middle two 
// elements.
// The median is the middle number in a sorted, ascending or descending, list of numbers
Array.prototype.median = function() {
    let length = this.length;
    let sort = this.sort();
    let num = 0
    if (length % 2 === 0) {
        let mid = length / 2;
        num = (sort[mid] + sort[mid - 1]) / 2;
    } else {
        let mid = Math.floor(length/2);
        num = sort[mid];
    }
    return num;
}