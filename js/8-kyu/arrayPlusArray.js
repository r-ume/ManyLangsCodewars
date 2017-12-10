// My Answer
Array.prototype.sumWithinArray = function(){
  return this.reduce(function(previousValue, currentValue, index, array){
    return previousValue + currentValue;
  });
};

// Best Answer
Array.prototype.bestSumInArray = function(array){
  return this.concat(array).reduce(function(previousValue, currentValue){
    return previousValue + currentValue;
  });
};

console.log([1, 2, 3].bestSumInArray([4, 5, 6]));
