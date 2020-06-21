i =1
while true
  if i * 5 >= 25
    break
  end
    puts i * 5
    i = i + 1
end

for i in 1..12 do
  if (i % 3 == 0) then
    puts "skip over"
    next
  end
  puts i
end