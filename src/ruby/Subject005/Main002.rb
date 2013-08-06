
h ={"apple" =>100 ,"lemon"=>120 ,"orange"=>90 ,"grape"=>110}

h.each{|key,value|
	
	puts key + "=>",value      
}

h.each_key{|key|
	puts "key= " + key 
}

h.each_value{|value|
	puts "value =", value 
}
