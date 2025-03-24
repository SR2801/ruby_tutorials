def caesar_cipher(plain_text, shift)
  cipher_text = ""
  plain_text.each_byte do |plain_char|
    print "#{plain_char} => "
    is_up_case = ()? false: true
    if plain_char >= 97
      # print "#{(plain_char - 97) + shift}"
      cipher_text += (((plain_char - 97) + shift).modulo(26) + 97).chr
    elsif plain_char >= 65
      # print "#{(plain_char - 65) + shift}"
      cipher_text += (((plain_char - 65) + shift).modulo(26) + 65).chr
    elsif plain_char < 60 or plain_char > 90 or plain_char >122
      # print "skipped"
      cipher_text += plain_char.chr
    end
    puts " -> #{cipher_text}"
  end
  cipher_text
end
puts caesar_cipher "What a string!", 5

# while true
  print  "Enter a string to be Caesar ciphered: "
  plain_text = gets.chomp
  print  "Enter a the key (shift): "
  shift = gets.chomp.to_i
  puts caesar_cipher plain_text, shift
# end