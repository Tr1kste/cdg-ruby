def greeting(age, name, surname)
  if age >= 18
    " - Привет #{name} #{surname}. Самое время заняться делом!"
  else
    " - Привет #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано!"
  end
end

def foobar(num_1, num_2)
  if num_1 == 20
    num_2
  elsif num_2 == 20
    num_1
  else
    num_1 + num_2
  end
end

print "Age -> "
age = gets.to_i
print "Name -> "
name = gets.chomp
print "Surname -> "
surname = gets.chomp

puts greeting(age, name, surname)

print "Number #1 -> "
num_1 = gets.to_i
print "Number #2 -> "
num_2 = gets.to_i

puts foobar(num_1, num_2)
