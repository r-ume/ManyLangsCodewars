// Cut It Clean

// cut(100, 2) => [50, 50]
// cut(100, 3) => [33, 33, 34]   // [33, 34, 33] and [34, 33, 33] are also acceptable

function cutItClean(dividend, divisor){
  // My Answer
  var array = [];
  if(dividend % divisor == 0){
    for (var i = 0; i < divisor; i++) {
      array[i] = dividend / divisor;
    }
  }else{
    for (var j = 0; j < Math.floor(dividend / divisor); j++) {
      array[j] = dividend;
    }
  }

  return array;
}

// Best Answer
var bestCutItClean = (len, num) => {
  let arr = Array(num).fill(Math.floor(len/num), 0, num);
  let reducer = (a, v) => a+v;
  while(arr.reduce(reducer) != len){
    arr.shift();
    arr.push(Math.ceil(len/num));
  }
  return arr;
}

console.log(bestCutItClean(86, 46));
