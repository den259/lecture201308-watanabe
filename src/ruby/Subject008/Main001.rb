h ={"apple" =>100 ,"lemon"=>120 ,"orange"=>90 ,"grape"=>110}

h["kiwi"]=150

h.store("peach",200)

h.clear

puts h

puts h.delete("apple" =>100 ,"lemon"=>120 ,"orange"=>90 ,"grape"=>110,"kiwi"=>150,"peach"=>200)

# ↑ こうではなく、↓ 下を期待していました。すみません。誤解を生むような指示書で。

h1 = { a: 'apple', o: 'orange' }

puts h1

h2 = { :a => 'apple', :o => 'orange' }

puts h2
