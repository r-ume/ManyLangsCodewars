// Summy

//　Write a function that takes a string which has integers inside it separated by spaces,
// and your task is to convert each integer in the string into an integer and return their sum.

// summy("1 2 3")  ==> 6

const summy = (str) => str.split(' ').reduce((previousValue, currentValue) => parseInt(previousValue) + parseInt(currentValue), 0);

console.log(summy('1 2 3'));
