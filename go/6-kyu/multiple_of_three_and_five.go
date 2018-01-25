// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
// The sum of these multiples is 23.
// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
// Note: If the number is a multiple of both 3 and 5, only count it once.

package main

import(
  "fmt"
)

func main(){
  fmt.Println(MultipleOfThreeAndFive(10))
}

func MultipleOfThreeAndFive(number int) int{
  result := 0
  for index := 1; index < number; index++ {
    if index % 3 == 0 || index % 5 == 0 {
      result += index
    }
  }

  return result
}
