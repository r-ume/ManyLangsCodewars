function spEng(sentence){
  return sentence.toLowerCase().includes('english');
}

var sentence = 'abcEnglishdef';
console.log(spEng(sentence));

