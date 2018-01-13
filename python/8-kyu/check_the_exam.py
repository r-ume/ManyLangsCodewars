# The first input array contains the correct answers to an exam, like ["a", "a", "b", "d"]. 
# The second one is "answers" array and contains student's answers.
# The two arrays are not empty and are the same length. 
# Return the score for this array of answers, giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer(empty string).


# If the score < 0, return 0.
# For example:
# checkExam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) → 6
# checkExam(["a", "a", "c", "b"], ["a", "a", "b",  ""]) → 7
# checkExam(["a", "a", "b", "c"], ["a", "a", "b", "c"]) → 16
# checkExam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) → 0

def check_exam(array1, array2):
  score = 0
  for index in range(len(array1)):
    if array2 == '':
      score += 0
    if array1[index] == array2[index]:
      score += 4
    else:
      score -= 1

  return score if score > 0 else 0


print(checkExam(["a", "a", "b", "b"], ["a", "c", "b", "d"]))
