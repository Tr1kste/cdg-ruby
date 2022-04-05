def greeting(age, username, second_name)
    age >=18 ? "Привет #{username} #{second_name}. Самое время заняться делом!" : 
    "Привет #{username} #{second_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано!"
end

print "Возраст >>> "
age = gets.to_i
print "Имя >>> "
username = gets.chomp
print "Фамилия >>> "
second_name = gets.chomp

puts greeting(age, username, second_name)

def foobar(num_1, num_2)
    if num_1 == 20
        num_2
    elsif num_2 == 20
        num_1
    else 
        num_1 + num_2
    end
end

print "Введите число 1 >>> "
num_1 = gets.to_i
print "Введите число 2 >>> "
num_2 = gets.to_i

puts foobar(num_1, num_2)
