// all_unique.go

// Write a program to determine if a string contains all unique characters. 
// Return true if it does and false otherwise.
// The string may contain any of the 128 ASCII characters.

package main

import(
  "fmt"
  // "strings"
)

func main() {
  fmt.Println(HasUniqueChar("sdfad"))
}

// My Answer
// func HasUniqueChar(str string) []string{
//   str = strings.ToLower("Gopher")
//   chars = SplitIntoChars(str)

//   m := make(map[string]bool)
//   uniq := [] string{}

//   for _, ele := range arr {
//     if !m[ele] {
//         m[ele] = true
//         uniq = append(uniq, ele)
//     }
//   }

//   return uniq
// }

// func SplitIntoChars(str string) []string{
//   return strings.Split(str, "")
// }

// Best Answer
func HasUniqueChar(str string) bool{
  var m = map[rune]bool{}
  for _, w := range str {
    m[w] = true
  }
  return len(m)==len(str)
}


