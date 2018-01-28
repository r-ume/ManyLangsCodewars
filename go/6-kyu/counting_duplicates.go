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
  fmt.Println(best_duplicate_count("indivisibility"))
  fmt.Println(second_best_duplicate_count("aabBcde"))
}

// Best Answer
func best_duplicate_count(word string) int{
  c := 0
  h := map[rune]int{}
  for _, r := range strings.ToLower(word){
    if h[r]++; h[r] == 2 { 
      c++ 
    }
  }

  return c
}

func second_best_duplicate_count(word string) int{
  counter := make(map[string]int)

  for _, s := range word {
    sl := strings.ToLower(string(s))
    counter[sl] += 1
  }

  sum := 0
  for _, v := range counter{
    if v > 1{
      sum += 1
    }
  }

  return sum
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
