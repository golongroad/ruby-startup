array=[1,2,3,4,5]
array.each do |i|
  puts i
  i += 1
  redo if i== 3
  end

n = 0
begin
  puts 'Trying to do something?'
  raise 'oops'
rescue => ex
  puts ex
  n += 1
  retry if n < 3
end
puts "Ok, I give up"
