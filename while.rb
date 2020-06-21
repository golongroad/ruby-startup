puts "Enter a value:"
x = gets.chomp.to_i
while x >= 0
  puts x
  x -=1
end

loop do
  puts "please input a value"
  input = gets.chomp
  if input == '5'
    puts "i quit"
    break
  end
end