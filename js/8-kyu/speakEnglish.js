// My Answer
String.prototype.speakEnglish = function(){
  return this.toLowerCase().includes('english');
};

// Best Answers
function spEng(s){
  return /english/i.test(s)
}

function firstSpEng(sentence){
  return sentence.match(/english/gi) !== null
}

var sentence = 'abcEnglishdef';
console.log(sentence.speakEnglish());
