# msg = "welcome to akon coder program"   

# puts msg["akon"]   
# puts msg["program"]   

# puts msg[0]   

# puts msg[0, 2]   
# puts msg[0..5]   
# puts msg[0, msg.length]   
# puts msg[-3]

str = "Original string"   
str << " is modified "   
str << "is again modified"   

puts str   

str.freeze   

## 试着去修改看看
str << "is again modified"   

puts str