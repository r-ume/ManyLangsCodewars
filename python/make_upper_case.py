
class string(str):
  def make_upper_case(self):
    return self.upper()

hello = string("hello")
print(hello.make_upper_case())
