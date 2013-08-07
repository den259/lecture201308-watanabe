

module Count
  def sum(x, y)
      total = x + y
      return total
  end
end

class Mat
  include Count

  def figure(x, y)
    total = sum(x, y)
    puts "sum=",total
  end
end

math = Mat.new
math.figure(8, 7)