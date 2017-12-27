// Opposite Number

// Very simple, given a number, find its opposite.

package main

import (
  "fmt"
)

func main(){
  fmt.Println(Opposite(-1))
}

func Opposite(value int) int {
  return -value
}
