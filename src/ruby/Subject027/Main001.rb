
class Object
  def current_method001
    caller.first.scan(/`(.*)'/) .to_s
  end
end

def meth
  p current_method001
end

meth