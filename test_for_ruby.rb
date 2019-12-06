# object.bark
# oject.wag_tail
# object.dream_about_chasing_things.
#
# bowl = []
# bowl.push(flour)
# bowl.push(eggs)
# bowl.push(sugar)
#
# mixture = bowl.contents
# mixture.bake
#
# return mixture
#
# if 1 + 2 > 2        if 1 + 2 > 2
#   return true
# else
#   return false
# end

puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
