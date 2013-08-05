
h ={"apple" =>100 ,"lemon"=>120 ,"orange"=>90 ,"grape"=>110}

h.each{|key,value|
	print(key + "=>" ,value )
    print("\n")
}
print("\n")


h.each_key{|key|
	print("key= " + key )
	print("\n")
}
print("\n")


h.each_value{|value|
	print("value =", value )
	print("\n")
}
