### 变量
Ruby中有四种类型的变量：
* 局部变量
局部变量名以小写字母或下划线(_)开头。变量可在它的初始化块内或范围内访问。代码块完成后，变量就不在作用域存在了。

* 类变量
类变量名以@@符号开头。需要在使用前进行初始化。 类变量属于整个类，可以从类中的任何位置访问。 如果在一个实例中该值将被更改，则它将在每个实例中被改变。
```
class States   
  @@no_of_states=0   
  def initialize(name)   
     @states_name=name   
     @@no_of_states += 1   
  end   
  def display()   
    puts "State name #@state_name"   
   end   
   def total_no_of_states()   
      puts "Total number of states written: #@@no_of_states"   
   end   
end   

# Create Objects   
first=States.new("Assam")   
second=States.new("Meghalaya")   
third=States.new("Maharashtra")   
fourth=States.new("Pondicherry")   

# Call Methods
first.total_no_of_states()
second.total_no_of_states()
third.total_no_of_states()
fourth.total_no_of_states()

# 执行上面代码，输出结果如下：

Total number of states written: 4
Total number of states written: 4
Total number of states written: 4
Total number of states written: 4

```

* 实例变量
实例变量名以@符号开头。 它属于类的一个实例，可以从方法中的类的任何实例访问。 它们只能访问一个特定的类的实例。
它们不需要初始化，未初始化的实例变量的值是：nil 。
```
class States   
   def initialize(name)   
      @states_name=name   
   end   
   def display()   
      puts "States name #@states_name"   
    end   
end   

# Create Objects   
first=States.new("Hainan")   
second=States.new("GuangDong")   
third=States.new("Beijing")   
fourth=States.new("ShangDong")   

# Call Methods   
first.display()   
second.display()   
third.display()   
fourth.display()

执行上面代码，输出结果如下：

States name Hainan
States name GuangDong
States name Beijing
States name ShangDong
```

* 全局变量
全局变量名以$号开头。在全局范围内可访问，可以从程序中的任何位置访问它。
未初始化的全局变量的值会被初始化为：nil。建议不要使用全局变量，因为它们使程序变得秘密和复杂。
Ruby中有一些预定义的全局变量。

```
$global_var = "GLOBAL"   
class One   
  def display   
     puts "Global variable in One is #$global_var"   
  end   
end   
class Two   
  def display   
     puts "Global variable in Two is #$global_var"   
  end   
end   

oneobj = One.new   
oneobj.display   
twoobj = Two.new   
twoobj.display
Ruby
# 执行上面代码，输出结果如下：

Global variable in One is GLOBAL
Global variable in Two is GLOBAL

```
> 总结

![变量总结](/images/变量.png)


### 数据类型

数据类型表示一种类型的数据，例如文本，字符串，数字等。Ruby中有以下几种不同的数据类型：
* 数字
* 字符串
* 符号
* 哈希
* 数组
* 布尔

1. 数字
* 整数和浮点数位于数字类别中。整数以二进制格式保存。
* 整数是没有分数的数字。 根据它们的大小，有两种类型的整数。 一个是Bignum，另一个是Fixnum。

![数值类型](/images/数值类型.png)

```
# example 1
a=3
b=4
puts a+b

# example 2
x1=3.5
x2=4.6
puts x1 + x2


# example 3
m1 =17
m2 =3
puts m1/m2

#执行结果
akon_coder at MacBook-Pro in ~/github/ruby (master) 
$ ruby 数值类型.rb
7
8.1
5
```
2. 字符串
* 字符串是表示一个或多个单词的一组字母。 字符串通过在单(')或双(")引号内包含文本来定义。
示例：
* 两个字符串之间可以使用+号进行连接。
* 将数字字符串与数字相乘将重复该字符串多次。
```
puts "akon" + " " + "coder"

puts "akon" * 3

# 执行结果
akon coder
akonakonakon

```

3. 符号
* 符号就像字符串。一个符号之前是冒号(:)。 例如，
```
:abcd
```
它们不包含空格。 含有多个单词的符号用(_)写成。 字符串和符号之间的一个区别是，如果文本是一个数据，那么它是一个字符串，但如果它是一个代码，它是一个符号。符号是唯一的标识符，表示静态值，而字符串表示更改的值。

4. 哈希
* 哈希将其值分配给其键。 它们可以用键关联指定值。
* 键的值由=>符号分配。 
* 键/值对之间用逗号分隔，所有对都用大括号括起来。 例如，
```
{"key1" => "value1", "key2" => "Chemistry", "key3" => "Maths"}
```
5. 数组
* 数组存储数据或数据列表。 它可以包含所有类型的数据。 数组中的数据之间用逗号分隔，并用方括号括起来。 例如，
```
["Akash", "Ankit", "Aman"]
```
数组中的元素由其位置检索。 数组中元素的位置以0开头。

### Ruby快速入门
1、常用的字符串方法
* .length
```
  def strHandle(strName)
    puts strName.length
  end
```

* .split
```
  def strSplit(splitStr)
    result = splitStr.split(",")
    puts result
  end
```

* .sub 和 .gsub
```
# sub example

  def subStr(str)
    subResult = str.sub("akon","liupeng")
    puts subResult
  end
  
# gsub example

  def gsubStr(str)
    gsubResult = str.gsub("Hello","liupeng")
    puts gsubResult
  end

```
* 块 - 重复指令
```
5.times do 
  puts "hello world"
end
```

* 支架块 
```
5.times{ puts "Hello, World!" }
```

* 块被传递给方法
```
"this is a sentence".gsub("e"){ puts "Found an E!"}
```
请注意，”Found an E!“显示了三次，因为字符串中有三个E字母。

* 块参数
```
5.times do |i|
  puts "#{i}: Hello, World!"
end

执行结果

0: Hello, World!
1: Hello, World!
2: Hello, World!
3: Hello, World!
4: Hello, World!
```
通常，在块内指示需要引用正在使用的值。 当在编写块代码时，可以在管道字符中指定一个块参数

* 数组的使用
```
meals = ["Breakfast", "Lunch", "Dinner"]
# 往数组添加元素
meals << "Dessert"
puts meals[2]
```

* 数组常用方法

1、.sort方法
```
array1 = ["this", "is", "an", "array"]

# 执行结果
["an", "array", "is", "this"]
```

* 条件语句

1、条件语句评估求值结果为true或false。 最常见的条件运算符是==(相等)，>(大于)，>=(大于或等于)，<(小于)和<=(小于或等于)。

2、一些对象也有返回true或false的方法，因此它们在条件语句中使用。 例如，每个对象都有方法.nil？ 只有当对象为nil时才返回：true。 数组有一个名称为.include的方法 如果数组包含指定的元素，则返回true。 Ruby中的约定方法名称以？结尾返回true或false。

```
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

 # 执行结果

The water is not boiling yet.
It's just barely boiling
It's boiling!
Hot! Hot! Hot!
```

* Nil和虚无

1、什么是虚无？ 当我们表达一个东西，没有确定它是什么东西的暂时可以叫它为：虚无，不是没有什么东西吗？ 好的，这太多哲学了，这有确实点难解释了。

2、nil是Ruby中用于表达“虚无”的方式。
如果有三个鸡蛋，您吃三个鸡蛋，那么可能认为现在您“没有什么”蛋了，但是在鸡蛋方面有“0”个。0是什么？它是一个数字，它并不是“虚无”。
如果使用一个单词，如“hello”这样的字符串，那么删除“h”，“e”，“l”和“o”，你可能会认为没有什么，但是现在真的有“”，它是一个空字符串，并不是“虚无”。

3、nil是Ruby的虚无的想法的表示。 当要求不存在的东西时，通常会遇到这种情况。 例如，当查看数组时，创建了一个包含五个元素的列表，然后要获取列表中添加第六个元素。但是没有第六个元素，所以Ruby给了nil。 在第六个元素的地方它并不是空白(“”)，也不是数字0，它是空/nil。

4、编写Ruby代码时遇到的大部分错误是涉及nil值的。以为某个位置有数据值，试图使用使用这个数据值去做一些事情，但没有这样的数据值，不能做任何事情，所以Ruby引发了一个错误。

* 对象、属性和方法

1、类和实例在面向对象编程中，我们定义了类，它们是类别或类型的东西的抽象描述。 它定义了该类型的所有对象的属性和方法。

例如，考虑对一个学校信息建模。要创建一个名为“Student”的类，表示学生的抽象。 Student类将定义如：first_name，last_name和primary_phone_number的属性。 它可以定义一个用于学生自我介绍的方法：introduction。
```
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction
    puts "Hi, I'm #{first_name}!"
  end
end
```
> attr_accessor方法是用于定义类的实例的属性。

2、类的方法返回值
```
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

frank = Student.new
frank.first_name = "Maxsu"
puts "Maxsu's favorite number is #{frank.favorite_number}."
```
打开终端运行上面代码，应该看到：“Maxsu's favorite number is 7”。文件的最后一行调用的是favorite_number方法。 该方法的最后一行(只有)行是第7行。这个表达式作为方法的返回值，该值返回给调用该方法的任何人。在例子中，这7数字值返回并被插入到字符串中。


* for 循环使用
```
# simple for
puts "输入一个数字："
a = gets.chomp.to_i
for i in 1..a do
  puts i
end


# 循环数组
x = ["Blue", "Red", "Green", "Yellow", "White", '五颜六色']   
for i in x do   
  puts i   
end
```

* while 使用
```
puts "Enter a value:"
x = gets.chomp.to_i
while x >= 0
  puts x
  x -=1
end
```

* do while 使用
```
loop do
  puts "please input a value"
  input = gets.chomp
  if input == '5'
    puts "i quit"
    break
  end
end
```
* until 使用
```
i =1
until i == 10
  puts i * 10
  i= i + 1
end
```
> until循环运行直到给定的条件求值为true,当条件成立时，它退出循环。 它正好与while循环相反，while循环运行直到给定的条件评估求值为false。


* break、next 使用
```
# break
i =1
while true
  if i * 5 >= 25
    break
  end
    puts i * 5
    i = i + 1
end

# next
for i in 1..12 do
  if (i % 3 == 0) then
    puts "skip over"
    next
  end
  puts i
end
```
> 1 、break语句用于终止循环。 它主要用于在while循环中，在条件为真时执行语句，break语句一般用于终止循环。

> 2、next语句用于跳过循环的下一个迭代。 执行下一条语句后，不再执行进一步的迭代。Ruby中的下一条语句等同于其他语言的continue语句。

* redo、retry使用
```
# redo
array=[1,2,3,4,5]
array.each do |i|
  puts i
  i += 1
  redo if i== 3
  end
 
# retry
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
```

### Ruby注释

* 单行注释

Ruby单行注释用于一次只注释一行。它们以＃字符开头。

```
#This is single line comment.
```

* 多行注释

Ruby多行注释用于一次注释多行。 它们使用=begin开始并在行尾以=end为终点。

```
=begin
    This
    is
    multi line
    comment
    line 1
    another line...
=end
```

### Ruby核心
* 方法的定义
```
class Test
def function (s1 = "default s1", s2 = "default s2")
  puts "s1 is #{s1}"
  puts "s2 is #{s2}"
end
end

s = Test.new
s.function("new s1","new s2")
```

* 可变参数数
```
def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample "Maxsu", "6", "F"
sample "Mac", "38", "M", "MCA"

```

* 类方法
```
class Accounts
   def reading_charge
   end
   def Accounts.return_date
   end
end
```
> 访问类方法 Accounts.return_date

* 代码块
```
[10, 20, 30].each do |n|
  puts n
 end

 [10,20,30].each {
   |i|
   puts i
 }
```
* yield语句传递参数
```
def met   
   yield 1   
   puts "This is method"   
   yield 2   
end   
met {|i| puts "This is block #{i}"}
```

* BEGIN和END块
```
BEGIN {   
  puts "code block is being loaded"   
}   

END {   
  puts "code block has been loaded"   
}   
puts "This is the code block"
```

* 使用默认值初始化对象
```
class Novel   
  attr_accessor :pages, :category   

  def initialize   
    yield(self)   
  end   
end   

novel = Novel.new do |n|   
  n.pages = 564   
  n.category = "thriller"   
end   

puts "I am reading a #{novel.category} novel which has #{novel.pages} pages."

# 输出结果
I am reading a thriller novel which has 564 pages.
```

### Ruby模块
1、Ruby模块是方法和常量的集合。模块方法可以是实例方法或模块方法。实例方法是包含模块的类中的方法。

2、可以在不创建封装对象的情况下调用模块方法，但是实例方法不能这么直接调用。

3、Ruby模块类似于类，因为它们包含方法，类定义，常量和其他模块的集合。Ruby模块可定义为类。但无法使用模块来创建对象或子类。也没有继承的模块层次结构。

> 模块基本上主要有两个目的：

> 1、它们作为命名空间，防止对象名字冲突。

> 2、它们允许> mixin工具在类之间共享功能


* 模块混合
```
module Name   
   def bella   
   end   
   def ana   
   end   
end   
module Job   
   def editor   
   end   
   def writer   
   end   
end   

class Combo   
include Name   
include Job   
   def f   
   end   
end   

final=Combo.new   
final.bella   
final.ana   
final.editor   
final.writer   
final.f
```
> 这里，模块Name由方法bella和ana组成。 模块Job由方法editor和writer组成。Combo类包括两个模块，由于Combo可以访问所有四种方法。 因此，Combo类作为mixin混合类型使用

### Ruby字符串

* 访问字符串元素
```
msg = "welcome to akon coder program"   

puts msg["akon"]   
puts msg["program"]   

puts msg[0]   

puts msg[0, 2]   
puts msg[0..5]   
puts msg[0, msg.length]   
puts msg[-3]

# 执行结果
akon
program
w
we
welcom
welcome to akon coder program
r
```

* 连接字符串

Ruby连接字符串是要使用多个字符串来创建一个字符串。可以通过连接多个字符串来形成单个字符串。
将Ruby字符串连接成单个字符串有四种方法：

1、在每个字符串之间使用加(+)号。

2、在每个字符串之间使用单个空格。

3、在每个字符串之间使用<<符号。

4、在字符串之间使用concat方法。

```
string = "This is Ruby Tutorial" + " from Yiibai." + " Wish you all good luck."   
puts string   

string = "This is Ruby Tutorial" " from Yiibai." " Wish you all good luck."   
puts string   

string = "This is Ruby Tutorial" << " from Yiibai." << " Wish you all good luck."   
puts string   

string = "This is Ruby Tutorial".concat(" from Yiibai.").concat(" Wish you all good luck.")   
puts string
```

* 冻结字符串

在大多数编程语言中，字符串是不可变的。现有的字符串不能修改，只能创建一个新的字符串。
在Ruby中，默认的字符串是可变的。为了使它们不可修改，可以使用freeze方法。

```
str = "Original string"   
str << " is modified "   
str << "is again modified"   

puts str   

str.freeze   

## 试着去修改看看
str << "is again modified"   

puts str

#str << "And here modification will be failed after using freeze method"

# 执行结果
Original string is modified is again modified
Traceback (most recent call last):
Ruby字符串.rb:22:in `<main>': can't modify frozen String: "Original string is modified is again modified" (FrozenError)

```

* 比较字符串

Ruby字符串可以使用以下三个运算符进行比较：

1、使用==运算符：返回true或false使用

2、eql? 运算符：返回true或false

3、使用casecmp方法：如果匹配则返回0，如果不匹配则返回1。

```
puts "abc" == "abc"   
puts "as ab" == "ab ab"   
puts "23" == "32"   

puts "ttt".eql? "ttt"   
puts "12".eql? "12"   

puts "Java".casecmp "Java"   
puts "Java".casecmp "java"   
puts "Java".casecmp "ja"

# 执行结果
true
false
false
true
true
0
0
1
```

### Ruby数组

* 创建Ruby数组

Ruby数组以许多方式创建。

1、使用文字构造函数 []
```
arr = [4, 4.0, "maxsu", ]   
puts arr
```

2、使用类的new方法
```
exm = Array.new(10)   
puts exm.size    
puts exm.length

exm = Array("a"..."z")   
puts "#{exm}"

```
* 访问数组元素

1、下标访问
```
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days[0]      
puts days[10]   
puts days[-2]     
puts days[2, 3]   
puts days[1..7]
```
2、at方法

```
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.at(0)   
puts days.at(-1)   
puts days.at(5)
```

3、fetch方法

fetch方法用于为数组范围索引提供默认的错误值。
```
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.fetch(10, 'NotFound')
```

4、first 和 last 方法

first 和 last 方法方法将分别返回数组的第一个和最后一个元素。

```
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.first   
puts days.last
```

5、take 方法

take方法返回数组的前n个元素。
```
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.take(1)   
puts days.take(2)   
puts days.take(3)
```

6、drop方法

drop方法与take方法相反。 它返回在第n个元素之后的所有元素。

```
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.drop(5)   
puts days.drop(6)

执行上面代码，得到以下结果

Sat
Sun
Sun
```

7、将元素项添加到数组

可以以不同的方式向Ruby数组添加元素。

* push 或 << 

使用push或<<，可以在数组的末尾添加项目元素。

```
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]  
puts days.push("Today")   
puts '-------------------------------'
puts days << ("Tomorrow")

执行结果

Mon
Tue
Wed
Thu
Fri
Sat
Sun
Today
-------------------------------
Mon
Tue
Wed
Thu
Fri
Sat
Sun
Today
Tomorrow
```
* unshift

使用unshift，可以在数组的开头添加一个新元素。

```
days = ["Fri", "Sat", "Sun"]   

puts days.unshift("Today")

执行上面代码，得到以下结果

Today
Fri
Sat
Sun
```

* insert

使用insert，可以在数组中的任何位置添加一个新元素。 在这里，首先需要要定位元素的索引位置。

```
days = ["Fri", "Sat", "Sun"]   
puts days.insert(2, "Thursday")

执行上面代码，得到以下结果

Fri
Sat
Thursday
Sun
```


8、从数组中删除项/元素

可以使用以下几种方式来删除Ruby数组元素。

* pop

使用pop方法，可以从数组的末尾删除项/元素。它返回删除的数据项/元素。

```
days = ["Fri", "Sat", "Sun"]   
puts days.pop

执行上面代码，得到以下结果 

Sun
```
* shift

使用shift，可以从数组的起始处删除项/元素。 它返回删除的项目/元素。

```
days = ["Fri", "Sat", "Sun"]   
puts days.shift

执行上面代码，得到以下结果

Fri
```
* delete

使用delete方法，可以从数组中的任意位置删除项(元素)。 它返回删除的项目(元素)。

```
days = ["Fri", "Sat", "Sun"]   
puts days.delete("Sat")

执行上面代码，得到以下结果

Sat
```

* uniq

使用uniq方法，可以从数组中删除重复的元素。它返回删除重复元素后剩余的数组。

```
days = ["Fri", "Sat", "Sun", "Sat"]   
puts days.uniq

执行上面代码，得到以下结果

Fri
Sat
Sun
```

### 哈希使用

* 创建哈希

Ruby哈希是通过在{}花括号中编写键值对来创建的。要获取哈希值，请在[]方括号内写入所需的键名称。

```
color = {  
    "Rose" => "red",   
    "Lily" => "purple",   
    "Marigold" => "yellow",   
    "Jasmine" => "white"   
  }   
  puts color['Rose']   
  puts color['Lily']   
  puts color['Marigold']   
  puts color['Jasmine']

执行上面示例代码，得到以下结果

red
purple
yellow
white
```

* 修改哈希

可以通过在已存在的哈希中添加或删除键值对来修改Ruby哈希。

```
color = {   
    "Rose" => "red",   
    "Lily" => "purple",   
    "Marigold" => "yellow",   
    "Jasmine" => "white"   
  }   
  color['Tulip'] = "pink"   
  color.each do |key, value|   
  puts "#{key} color is #{value}"   
 end

执行上面示例代码，得到以下结果

Rose color is red
Lily color is purple
Marigold color is yellow
Jasmine color is white
Tulip color is pink
```

### Ruby日期时间

Ruby文档中主要有三个与日期和时间相关的类，它们分别如下所示
* Date
 ```
 require 'date'   

puts Date.new(2017,9,3)            
puts Date.jd(2451877)               
puts Date.ordinal(2017,9)         
puts Date.commercial(2017,5,6)     
puts Date.parse('2017-08-03')    
puts Date.strptime('03-02-2017', '%d-%m-%Y')                           
puts Time.new(2017,11,8).to_date

执行上面代码，得到以下结果

2017-09-03
2000-11-28
2017-01-09
2017-02-04
2017-08-03
2017-02-03
2017-11-08
 ```
* DateTime

Ruby DateTime是Date的子类。它可以轻松处理日期，时间，分钟，秒和偏移量。
DateTime对象使用DateTime.new，DateTime.ordinal，DateTime.parse，DateTime.jd，DateTime.commercial，DateTime.now等来创建

```
require 'date'   
puts DateTime.new(2019,3,4,5,6,7)

执行上面代码，得到以下结果

2019-03-04T05:06:07+00:00
```
* Time

1、可以使用::new创建新的Time实例。这可使用获取当前系统的时间。 部分时间，如年，月，日，小时，分钟等也可以通过这种方法获得。

2、创建新的时间实例时，您需要指定传递至少年份。 如果只有通过了指定年份，那么时间将默认为当前系统时区的那个年份的1月1日 00:00:00开始。

```
require 'date'   
puts Time.new          
puts Time.new(2018, 3)       
puts Time.new(2018, 3, 4)   
puts Time.new(2019, 3, 4, 6, 5, 5, "+05:00")

执行上面代码，得到以下结果

2017-05-08 23:31:03 +0800
2018-03-01 00:00:00 +0800
2018-03-04 00:00:00 +0800
2019-03-04 06:05:05 +0500
```










