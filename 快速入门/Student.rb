class Student
  attr_accessor :first_name,:age,:phone
  def introduction
    puts "i am a student,my name is #{first_name},my age is #{age},my phone is #{phone}"
  end
end

s1= Student.new
s1.first_name="akon coder"
s1.age = 28
s1.phone = "17521249040"
s1.introduction