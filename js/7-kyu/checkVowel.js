// Check if it is a vowel(a, e, i, o, u,) on the n position (the second argument, only positive integer) in a string (the first argument).
// Don't forget about uppercase.

// checkVowel('cat', 1)  ->   true // 'a' is a vowel
// checkVowel('cat', 0)  ->   false // 'c' is not a vowel
// checkVowel('cat', 4)  ->   false // this position doesn't exist

String.prototype.checkVowel = function(position){
  return ['a', 'e', 'i', 'o', 'u'].includes(this.toLowerCase()[position]);
};

console.log('cat'.checkVowel(1));

// other answer
// const checkVowel = (str, pos) => /[aeiou]/i.test(str[pos] || '');
