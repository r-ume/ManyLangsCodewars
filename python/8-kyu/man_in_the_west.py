# Man in the west

# A western man is tring to find gold in a river. 
# To do that, he passes a bucket through the river's soil and then checks if it contains any gold. 
# However, he could be more productive if he wrote an algorithm to do the job for him.
# So, you need to check if there is gold in the bucket, and if so, return True/true. If not, return False/false.

# My Answer
import numpy

def check_the_bucket(bucket):
  bucket = numpy.array(bucket)
  if (bucket == 'gold').any():
    return True

  return False

print(check_the_bucket(['stone', 'stone', 'gold', 'stone', 'stone']))

# Best Answer
# def check_the_bucket(bucket):
#     return 'gold' in bucket
