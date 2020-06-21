class Sample

  def hello
    name= gets
    puts "hello,#{name},welcome to ruby world"
  end

  def strHandle(strName)
    puts strName.length
  end

  def strSplit(splitStr)
    result = splitStr.split(",")
    puts result
  end

  def subStr(str)
    subResult = str.sub("akon","liupeng")
    puts subResult
  end

  def gsubStr(str)
    gSubResult = str.gsub("Hello","liupeng")
    puts gSubResult
  end

  def water_status(minutes)
    if minutes < 7
      puts "The water is not boiling yet."
    elsif minutes == 7
      puts "It's just barely boiling"
    elsif minutes == 8
      puts "It's boiling!"
    else
      puts "Hot! Hot! Hot!"
    end
  end

end

s=Sample.new
s.hello
s.strHandle("akon coder is coding")
s.strSplit("1,2,34,56,66")
s.subStr("akon ,hello world")
s.gsubStr("Hello, Hello Everyone!")

#重复指令
5.times do 
  puts "hello world"
end

#支架块
5.times{ puts "Hello, World!" }

# 块被传递给方法
"this is a sentence".gsub("e"){ puts "Found an E!"}

# 块参数
5.times do |i|
  puts "#{i} ,hello world"
end

# 数组的使用
meals = ["Breakfast", "Lunch", "Dinner"]
# 往数组添加元素
meals << "Dessert"
puts meals[3]

# 数组常用方法
array1 = ["this", "is", "an", "array"]
puts array1.sort

# 条件分支/指令
s.water_status(5)
s.water_status(7)
s.water_status(8)
s.water_status(9)
