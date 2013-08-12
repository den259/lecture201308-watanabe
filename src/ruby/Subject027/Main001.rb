
class Object
  def current_method001
  	__method__.class
    # caller.first.scan(/`(.*)'/) .to_s
  end
end

def meth
  p current_method001
end

meth