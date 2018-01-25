// Counting Duplicates

// Count the number of Duplicates
// Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

// Example
// "abcde" -> 0 # no characters repeats more than once
// "aabbcde" -> 2 # 'a' and 'b'
// "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (bandB)
// "indivisibility" -> 1 # 'i' occurs six times
// "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
// "aA11" -> 2 # 'a' and '1'
// "ABBA" -> 2 # 'A' and 'B' each occur twice

package main

import(
  "fmt"
  "strings"
)

func main(){

  fmt.Println(duplicate_count("indivisibility"))
}

// Best Answer
func duplicate_count(word string) int {
  count := 0
  word = strings.ToLower(word)
  chars := strings.Split(word, "")
}

// My Answer
// func CountingDuplicates(word string) int {
//   unique := []string{}
//   slice_for_loop := []string{}
//   chars := strings.Split(word, "")

//   for _, element := range chars {
//     if contains(slice_for_loop, element) {
//       slice_for_loop = append(slice_for_loop, element)
//     } else {
//       unique = append(unique, element)
//     }
//   }
//   return len(slice_for_loop)
// }

// func contains(array []string, char string) bool{
//   for _, v := range array{
//     if char == v {
//       return true
//     }
//   }
//   return false
// }
