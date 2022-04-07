# Task Text
def string (text)
    if text.end_with?("CS")
        2**text.length
    else 
        text.reverse
    end
end

print "Print text >>> "
text = gets.chomp

puts string(text)

# Task Pokemons
print "Number of pokemon >>> "
num_pokemon = gets.chomp.to_i

def pokemon(num_pokemon)
    i = 0
    arr = []
    while i<num_pokemon do
        print "Name pokemon number #{i+1} >>> "
        name_pok = gets.chomp.to_s
        print "Color pokemon number #{i+1} >>> "
        color_pok = gets.chomp.to_s
        arr << {name: name_pok, color: color_pok}
        i += 1
    end
    return arr
end

print pokemon(num_pokemon)
