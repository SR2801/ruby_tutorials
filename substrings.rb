def substrings1 (words, dictionary)
  splitted_words = words.downcase.split(" ").reject(&:empty?)
  hash = {}
  dictionary.each do |dict_word| 
    # puts "DOing #{dict_word}"
    splitted_words.each do |word|
      hash[dict_word] = hash.fetch(dict_word, 0) + 1 if word.include?(dict_word)
    end
    # puts hash
  end
  hash
end

def substrings2 words, dictionary
  splitted_words = words.downcase.split(/[^a-zA-Z0-9']/).reject(&:empty?)
  puts splitted_words
  string_count = dictionary.each_with_object(Hash.new(0)) do |dict_word, hash|
    hash[dict_word] += splitted_words.reduce(0) {|count, word| word =~ /#{dict_word}/ ?  count+1: count }
    hash.delete dict_word if hash[dict_word].zero?
  end
  # puts string_count
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts substrings1("Howdy partner, sit down! How's it going?", dictionary)
puts substrings2("Howdy partner, sit down! How's it going?", dictionary)
