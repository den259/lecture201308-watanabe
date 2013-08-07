
class Word
  def method001
      puts "I'm method001"
  end
end


class Word
   def method002
      puts "I'm method002"
   end
end

class Word
  def method001
      puts "I'm new method001"
  end
end


word = Word.new
word.method001
word.method002