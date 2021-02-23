// Write an `Array.prototype.dups` method that will return an object containing 
// the indices of all duplicate elements. The keys are the duplicate elements; 
// the values are arrays of their indices in ascending order
//
// Example: 
// [1, 3, 4, 3, 0, 3, 0].dups => { 3: [1, 3, 5], 0: [4, 6] }

Array.prototype.dups = function() {
    let dupes = {};
    let exist = {};

    for (let i = 0; i < this.length; i++) {
        let ele = this[i];
        // exist.indexOf(ele) === 0, 4   [a,b,c,a]  = arr    0, 4 arr.indexOf("a")
        if (ele in dupes) { ///seen more than twice | if ele is a key in dupes
            dupes[ele].push(i); // push ele into the value of they key/value pair
        } else if (ele in exist) { //seen once
            dupes[ele] = [exist[ele], i]; //if ele is in exist object more than once then added to dupes
        } else { //never seen;
            exist[ele] = i; //{ 1: 0 }  //places ele inside exist object
        };
    };
    return dupes;
};
