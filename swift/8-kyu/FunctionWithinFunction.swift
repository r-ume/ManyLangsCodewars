
// FunctionWithinFunction.swift

// Given an input n, write a function always that returns a function which returns n. 
// Ruby should return a lambda or a proc.

// var three = always(3);
// three(); // returns 3

import Foundation

func always(_ n: Int) -> () -> Int {
  func returner() -> Int {
    return n;
  }
  return returner;
}
