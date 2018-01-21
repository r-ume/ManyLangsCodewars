// Regular Ball Super Ball

// Regular Ball Super Ball
// Create a class Ball.
//
// Ball objects should accept one argument for "ball type" when instantiated.
//
// If no arguments are given, ball objects should instantiate with a "ball type" of "regular."


// My Answer
class Ball {
  
  let type: String
  
  init(type: String = "regular"){
    self.type = type
  }
  
  func ballType() -> String{
    return type
  }
}

var ball: Ball = Ball(type: "")
var ball2: Ball = Ball(type: "adfad")


print(ball.ballType())    //=> "regular"
print(ball2.ballType())    //=> "super"

// Best Answer
// class Ball {
//   var type = "regular"
//   init(type: String? = nil) {
//       self.type = type ?? self.type
//   }
// }

