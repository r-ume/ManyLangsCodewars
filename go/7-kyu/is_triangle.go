// Is this a triangle?

// Implement a method that accepts 3 integer values a, b, c. ¥
// The method should return true if a triangle can be built with the sides of given length and false in any other case.

// (In this case, all triangles must have surface greater than 0 to be accepted).

package main

import(
  "fmt"
)

func main(){
  fmt.Println(IsTriangle(5, 1, 2))
}

func IsTriangle(a, b, c int) bool{
  return a + b > c && a + c > b && b + c > a 
}
