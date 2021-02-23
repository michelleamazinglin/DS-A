// Write an `Array.prototype.myJoin(separator)` method, which joins the elements
// of an array into a string. If an argument is provided to `myJoin`, use that
// between each element. Otherwise, use an empty string.
// Do NOT call the built-in `Array.prototype.join` method.
// ex.
// [1, 2, 3].myJoin() => '123'
// [1, 2, 3].myJoin('$') => '1$2$3'

Array.prototype.myJoin = function(separator = "") {
    let str = "";
    for(let i = 0; i < this.length; i++) {
        str += this[i]
        str += separator
    }
    if (separator === "") {
        return str;
    } else {
        return str.slice(0, str.length-1);
    }
}