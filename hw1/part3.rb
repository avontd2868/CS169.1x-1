def combine_anagrams(words)
  output = {}
  words.each do |word|
    if output[sort_word word].nil?
      output[sort_word word] = [ word ]
    else
      output[sort_word word] << word
    end
  end
  output.values
end

def sort_word(word)
  word.downcase.chars.sort.join
end
