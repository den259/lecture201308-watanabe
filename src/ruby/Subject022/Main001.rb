
def method
    puts "I'm method"
end

method

# 細かなことですが、期待しているのは、以下のコードです。

def method
    "I'm method"
end

puts method
