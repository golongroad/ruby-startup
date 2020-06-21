class Test
def function (s1 = "default s1", s2 = "default s2")
  puts "s1 is #{s1}"
  puts "s2 is #{s2}"
end

def sample (*test)
  puts "The number of parameters is #{test.length}"
  for i in 0...test.length
     puts "The parameters are #{test[i]}"
  end
end

end

s = Test.new
s.function("new s1","new s2")

s.sample "Maxsu", "6", "F"
s.sample "Mac", "38", "M", "MCA"