// MyAnswer
Array.prototype.getMinMax = function(){
  var result = [];
  result.push(Math.min.apply(null, this));
  result.push(Math.max.apply(null, this));
  return result;
};

console.log([1].getMinMax());

// BestAnswer
Array.prototype.bestGetMinMax = function(){
  return [Math.min(...this), Math.max(...this)];
};

console.log([1, 2, 3].bestGetMinMax());
