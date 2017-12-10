// Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

package main

import "fmt"

func EvenOrOdd(number int) string {
  if number % 2 == 0 {
      return "Even"
    }
    return "Odd"
}

func main(){
  fmt.Println(EvenOrOdd(3))
}
