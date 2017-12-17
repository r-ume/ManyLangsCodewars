// swapHeadAndTail

// You need to swap the head and the tail of the specified array:
// The head (the first half) of array moves to the end, the tail (the second half) moves to the start.
// The middle element (if it exists) leaves on the same position.

// For example:
// [ 1, 2, 3, 4, 5 ]   =>  [ 4, 5, 3, 1, 2 ]
//  \----/   \----/
//   head     tail
//
//   [ -1, 2 ]  => [ 2, -1 ]
//   [ 1, 2, -3, 4, 5, 6, -7, 8 ]   =>  [ 5, 6, -7, 8, 1, 2, -3, 4 ]

pry = require('pryjs');

// My Answer
const swapHeadAndTail = (array) => {
  if(array.length == 1){
    return array[0];
  }
  var middle_index = Math.floor(array.length / 2);
  var tail = array.slice(-middle_index);
  var head =  array.slice(0, middle_index);
  if(array.length % 2 == 0) {
    return tail.concat(head);
  }else{
    return tail.concat(array[middle_index]).concat(head);
  }
}

// Best Answer
const bestSwapHeadAndTail = (array) => {
  const x = parseInt(arr.length / 2);
  const head = arr.splice(0, x);
  const tail = arr.splice((arr.length - x), x);
  return [...tail, ...arr, ...head];
}

console.log(swapHeadAndTail([ -1]));
