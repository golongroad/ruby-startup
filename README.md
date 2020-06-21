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

