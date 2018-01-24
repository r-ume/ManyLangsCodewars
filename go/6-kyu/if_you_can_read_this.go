// If you can read this

// The idea for this Kata came from 9gag today.here
// You'll have to translate a string to Pilot's alphabet (NATO phonetic alphabet) wiki.

// Like this:
// Input: If you can read
// Output: India Foxtrot Yankee Oscar Uniform Charlie Alfa November Romeo Echo Alfa Delta

// Some notes
// Keep the punctuation, and remove the spaces.
// Use Xray without dash or space.
// Reference

// alt text

// You can use the NATO hash with the alphabet

package main
 
import(
  "strings"
  "fmt"
) 

var nato_map = map[rune]string{
  'a': "Alfa", 'b': "Bravo", 'c': "Charlie", 'd': "Delta", 'e': "Echo", 
  'f': "Foxtrot", 'g': "Golf", 'h': "Hotel", 'i': "India", 'j': "Juliett", 
  'k': "Kilo", 'l': "Lima", 'm': "Mike", 'n': "November", 'o': "Oscar", 
  'p': "Papa", 'q': "Quebec",'r': "Romeo", 's': "Sierra", 't': "Tango", 
  'u': "Uniform", 'v': "Victor", 'w': "Whiskey", 'x': "Xray", 'y': "Yankee", 'z': "Zulu"}

func main(){
  fmt.Println(ToNato("the word"))
}

// Best Answer
func ToNato(words string) string{
  var trans string

  for _, ch := range strings.ToLower(words){
    fmt.Println(ch)
    if ch == 32 {
      continue
    } else if ch >= 97 && ch <= 122 {
      trans += nato_map[ch] + " "
    } else {
      trans += string(ch)
    }
  }

  size := len(trans)
  if trans[size - 1] == ' ' {
    return trans[0:size -1]
  }
  return trans
} 

// The Answer that I could have thought the best.
// func ToNato(sentence string) string {
//   result := []string{}
//   nato := []string{"Alfa", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot","Golf", "Hotel", "India", "Juliett", "Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec", "Romeo", "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "X-ray", "Yankee", "Zulu"}
//   words := strings.Split(sentence, " ")

//   for nato_index, nato_element := range nato {
//     for index, element := range words {
//       if getRuneAt(element, index) == getRuneAt(nato_element, nato_index){
//         result = append(result, nato_element)
//       }
//       if 
//     }
//   }

//   return strings.Join(result, "")
// }

// func getRuneAt(s string, i int) rune {
//   rs := []rune(s)
//   return rs[i]
// }






