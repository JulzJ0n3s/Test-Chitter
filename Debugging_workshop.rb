def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  puts cipher
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  #puts ciphertext_chars
  end
  ciphertext_chars.join
  #puts ciphertext_chars
end


def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #puts key.chars.uniq #retutns to a new line - devoid of duplicating self
  puts (('a'..'z').to_a - key.chars) #print self to an array
  #puts key.chars
  #puts cipher
  #puts ciphertext.chars
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  #puts char.ord
  #puts  cipher[65 - char.ord]
  #puts plaintext_chars = blank
  end
  plaintext_chars.join
  #puts plaintext_chars - joins, but adds extra letters  & not in order
end
