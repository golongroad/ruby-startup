module Name   
  def bella   
  end   
  def ana   
  end   
end   
module Job   
  def editor   
    puts "Job"
  end   
  def writer   
    puts "writer"
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

