
# I worked on this challenge  with Chand Nirankari.


# Your Solution Below

def valid_triangle?(a, b, c)
  
  if a == 0 || b == 0 || c == 0
      return false
  
  elsif a + b > c && a + c > b && b + c > a
      return true
      
  elsif a == b && b == c && a == c
      return true
      
  elsif a**2 + b**2 == c**2 || b**2 + c**2 == a**2 || a**2 + c**2 == b**2
      return true
  end
  false
end
