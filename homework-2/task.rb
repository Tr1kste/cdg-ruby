def string (text)
    if text.end_with?("CS")
        2**text.length
    else 
        text.reverse
    end
end

print "Строка >>> "
text = gets.chomp

puts string(text)