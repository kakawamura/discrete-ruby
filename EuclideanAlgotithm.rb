# solve GCD with Euclidean Algorithm
# January 25th 2015

def gcd(x, y)
  x, y = y, x if x < y

  r = x % y 
  q = x / y

  # while the remainder is not 0
  while !(r==0)
    r_before = r

    # solve the remainder and the quotient
    r = x % y
    q = x / y

    # update x and y 
    x = y
    y = r
  end
  
  puts r_before
end
def gcd2(x, y)
  if y == 0
    return x.abs
  else
    return gcd2(y, x%y)
  end
end

x = gets.chomp.to_i
y = gets.chomp.to_i

puts gcd2(x, y)
puts gcd2(y, x)
puts x.gcd(y)
