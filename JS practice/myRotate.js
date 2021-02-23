// Write an `Array.prototype.myRotate(times)` method which rotates the array by 
// the given argument. If no argument is given, rotate the array by one position. 
// ex.
// ["a", "b", "c", "d"].myRotate() => ["b", "c", "d", "a"]
// ["a", "b", "c", "d"].myRotate(2) => ["c", "d", "a", "b"]
// ["a", "b", "c", "d"].myRotate(-1) => ["d", "a", "b", "c"]

Array.prototype.myRotate = function(times = 1) {
    if (times >= 0) {
        for(let i = 0; i < times; i++) {
            let ele = this.shift();
            this.push(ele);
        };
    } else {
        let num = Math.abs(times);
        for(let i = 0; i < num; i++) {
            let ele = this.pop();
            this.unshift(ele);
        };
    };
    return this;
}