package main

import( 
  "fmt"
  "strings"
)

func main(){
  fmt.Println(repeatStr(6, "I"))
}

func repeatStr(repititions int, value string) string{
  return strings.Repeat(value, repititions)
}
