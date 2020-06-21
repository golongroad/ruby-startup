### 数据类型

* 数值
* 文本
* 范围
* 布尔值

### 条件判断
* if
* elsif
* unless

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

![变量总结]("/images/变量.png")
