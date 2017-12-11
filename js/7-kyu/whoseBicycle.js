// I am the father of three wonderful sons.
// Before the beginning of the school year, I promised them that I would buy a bicycle for someone who would bring the best marks at the end of the school year.
// It's time to keep promises and I count on you.

// You have 3 input objects(school diaries) with school subjects and marks (1-10). For example:
//
// {
//   'algebra': 6,
//   'history': 8,
//   'physics': 9,
//   'geography': 2,
//   'chemistry': 9
// }

Object.prototype.sumOfMarks = function(){
  return Object.values(this).reduce(function(previousValue, currentValue){
    return previousValue + currentValue;
  });
};

function whoseBicycle(diary1, dairy2, dairy3){
  var result = Math.max(diary1.sumOfMarks(), dairy2.sumOfMarks(), dairy3.sumOfMarks());
  if (result === sum3){
    return ('I need to buy a bicycle for my third son.');
  }
  if(result === sum2){
    return ('I need to buy a bicycle for my second son.');
  }
  if(result === sum1){
    return ('I need to buy a bicycle for my first son.');
  }
};

