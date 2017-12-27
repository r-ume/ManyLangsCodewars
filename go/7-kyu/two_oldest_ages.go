// Two Oldest Ages

// The two oldest ages function/method needs to be completed. 
// It should take an array of numbers as its argument and return the two highest numbers within the array. 
// The returned value should be an array in the format [second oldest age, oldest age].

// The order of the numbers passed in could be any order. 
// The following are some examples of what the method should return (shown in different languages but the logic will be the same between all three).

package main

import(
  "fmt"
  "sort"
)

func main() {
  array := []int{ 1, 5, 87, 45, 8, 8 }
  fmt.Println(TwoOldestAges(array))
}

// My Answer
func TwoOldestAges(ages []int) [2]int {
  sort.Sort(sort.Reverse(sort.IntSlice(ages)))
  return [2]int{ages[1], ages[0]}
}
