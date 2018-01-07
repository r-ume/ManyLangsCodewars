package main

import "fmt"

func main(){
  fmt.Println(century(1900))
}

// My Answer
func century(year int) int{
  firstTwoDigits := year / 1e2
  lastTwoDigits := year % 1e2

  if lastTwoDigits == 0 {
    return firstTwoDigits
  } else{
    return firstTwoDigits + 1
  }
}

// Best Answer
func BestCentury(year int) int {
  return (year + 99) / 100 
}
