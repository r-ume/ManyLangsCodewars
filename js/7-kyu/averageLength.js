// averageLength

var pry = require('pryjs');

// My Answer
function averageLength(string_array){
  var length_array = string_array.map(function(element){
    return element.length
  });

  var sum = function(arr) {
    return arr.reduce(function(prev, current) {
      return prev + current;
    });
  };

  var average = function(array){
    return Math.round(sum(array) / array.length);
  };

  var average_num = average(length_array);

  return string_array.map(function(element){
    return element[0].repeat(average_num);
  });
}

// Best Answer
function bestAverageLength(string_array){
  const average = Math.round(string_array.join('').length / string_array.length);
  return arr.map(element) => element[0].repeat(average));
}

console.log(averageLength(['aa', 'bbb', 'cccc']));
