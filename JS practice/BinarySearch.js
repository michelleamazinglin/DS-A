// Write a recursive function, `binarySearch(sortedArray, target)`, that returns
// the index of `target` in `sortedArray`, or -1 if it is not found.
//
// Here's a quick summary of the binary search algorithm:
//
// Start by looking at the middle item of the array. If it matches the target,
// return its index. Otherwise, recursively search either the left or the right
// half of the array until the target is found or the base case (empty array) is
// reached.

function binarySearch(sortedArray, target) {
    if (sortedArray.length === 0) return -1;
    const midpoint = Math.floor(sortedArray.length / 2);
    if (sortedArray[midpoint] > target ) {
        return binarySearch(sortedArray.slice(0, midpoint), target);
    } else if (sortedArray[midpoint] < target) {
        const subResult = binarySearch(sortedArray.slice(midpoint + 1), target);
        return subResult === -1 ? -1 : subResult + midpoint + 1;
    } else {
        return midpoint;
    }
}

// time complecity

