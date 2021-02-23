// Write a function `primes(num)`, which returns an array of the first "num" primes.
// You may wish to use an `isPrime(num)` helper function.

function primes(num) {
    let arr = []
    for (let i = 2; arr.length < num; i++) {
        if (isPrime(i)) {
            arr.push(i)
        };
    };
    return arr;
}

function isPrime(num) {
    if (num < 2) {
        return false;
    };
    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false;
        }
    }
    return true;
}