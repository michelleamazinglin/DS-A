Array.prototype.myFlatten = function() {
    let arr = []
    for (let i = 0; i < this.length; i++) {
        if (Array.isArray(this[i])) {
            let ele = this[i].myFlatten();
            arr.concat(ele);
        } else {
            arr.push(this[i])
        }
    }
    return arr;
}
// flatten array