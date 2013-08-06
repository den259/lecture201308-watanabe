
str1 = "hello"
str2 = "hello"

puts str1 == str2
puts str1.equal?(str2)


str3 = str4 = "hello"

puts str3 == str4
puts str3.equal?str4


h ={"apple" =>100 ,"lemon"=>120 ,"orange"=>90 ,"grape"=>110}
h1={"apple" =>100 ,"lemon"=>120 ,"orange"=>90 ,"grape"=>110}
h2={"apple" =>110 ,"lemon"=>120 ,"orange"=>90 ,"grape"=>100}

puts h.eql?(h1)
puts h.eql?(h2)
