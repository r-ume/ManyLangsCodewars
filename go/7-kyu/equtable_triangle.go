// Check if a triangle is an equtable triangle!

// A triangle is called an equable triangle if its area equals its perimeter. 
// Return true if it is an equable triangle, else return false.

package main

import(
  "fmt"
  // "math"
)

func main(){
  fmt.Println(EqutableTriangle(4, 5, 9))
}

// My Answer
func EqutableTriangle(a, b, c int) bool{
  perimeter := (a+b+c)/2
  area := math.Sqrt(float64(perimeter*((perimeter-a)*(perimeter-b)*(perimeter-c))))
  return float64(a+b+c) == area 
}

// Best Answer
// func EquableTriangle(a, b, c int) bool {
//     p := a+b+c
//     return 16*p == (p-2*a)*(p-2*b)*(p-2*c)
// }
