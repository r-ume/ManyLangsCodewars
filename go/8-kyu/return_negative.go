// In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

// Example:

// MakeNegative(1)    # return -1
// MakeNegative(-5)   # return -5
// MakeNegative(0)    # return 0
// Notes:

// The number can be negative already, in which case no change is required.
// Zero (0) can't be negative, see examples above.

package main

import "fmt"

func main() {
	fmt.Println(MakeNegative(9))
}

func MakeNegative(x int) int {
	if x >= 0 {
		return -1 * x
	}
	return x
}
