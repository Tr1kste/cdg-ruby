# Task Text
def string(text)
  if text.end_with?("CS")
    2 ** text.length
  else
    text.reverse
  end
end

print "Print text -> "
text = gets.to_s.chomp

puts string(text)

# Task Pokemons
print "Number of pokemons -> "
num_pokemon = gets.to_i

def pokemon(num_pokemon)
  i = 0
  arr = []
  while i < num_pokemon
    print "Name pokemon number #{i + 1} -> "
    name_pok = gets.to_s.chomp
    print "Color pokemon number #{i + 1} -> "
    color_pok = gets.to_s.chomp
    arr << { name: name_pok, color: color_pok }
    i += 1
  end
  return arr
end

puts pokemon(num_pokemon)
