
class Object
  def current_method001
    caller.first.scan(/`(.*)'/) .to_s
  end
end

def meth1
  p current_method001
end
def meth2
  p current_method001
end
def meth3
  p current_method001
end
def meth4
  p current_method001
end
def meth5
  p current_method001
end
def meth6
  p current_method001
end
def meth7
  p current_method001
end
def meth8
  p current_method001
end
def meth9
  p current_method001
end
def meth10
  p current_method001
end


class Word
  [*1..10].each do |num|
    define_method("method_#{num}") do |message|
    end
  end
end

dm = Word.new
p dm.methods.select{|i| i=~/method/}

dm.method_1 meth10
