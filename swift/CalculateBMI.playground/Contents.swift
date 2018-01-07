// Calculate BMI

//Write function bmi that calculates body mass index (bmi = weight / height ^ 2).

//if bmi <= 18.5 return "Underweight"
//if bmi <= 25.0 return "Normal"
//if bmi <= 30.0 return "Overweight"
//if bmi > 30 return "Obese"

import Foundation

// My Answer
func bmi(_ weight: Int, _ height: Double) -> String {
  var bmi = (Double(weight)) / pow(height, 2)
  var status = ""
  
  print(bmi)

  if bmi <= 18.5 {
    status = "Underweight"
  }else if bmi <= 25.0 {
    status = "Normal"
  }else if bmi <= 30.0 {
    status = "Overweight"
  }else if bmi > 30 {
    status = "Obese"
  }
  
  return status
}

print(bmi(50, 1.80))


// Best Answer
enum BMIKind: CustomStringConvertible {
  case underweight
  case normal
  case overweight
  case obese
  
  var description: String {
    switch self {
    case .underweight:
      return "UnderWeight"
    case .normal:
      return "Normal"
    case .overweight:
      return "OverWeight"
    case .obese:
      return "Obese"
    }
  }
  
  init(bmiIndex: Double){
    if bmiIndex <= 18.5 {
      self = .underweight
    } else if bmiIndex <= 25.0 {
      self = .normal
    } else if bmiIndex <= 30.0 {
      self = .overweight
    } else {
      self = .obese
    }
  }
}

struct BMIIndex {
  var rawValue: Double
  init(weight: Int, height: Double) {
    rawValue = Double(weight) / (height * height)
  }
}

func bestBmi(_ weight: Int, _ height: Double) -> String {
  let bmiIndex = BMIIndex(weight: weight, height: height)
  let bmiKind = BMIKind(bmiIndex: bmiIndex.rawValue)
  
  return bmiKind.description
}
