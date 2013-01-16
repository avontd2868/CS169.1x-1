def palindrome?(str)
  str = str.gsub(/\W/i, '').downcase
  str == str.reverse
end

def count_words(str)
  str_hash = Hash.new
  str.gsub(/(\w+\b)/i) do |m|
    str_hash[m.downcase] =  str_hash[m.downcase].nil? ? 1 : str_hash[m.downcase] + 1
  end
  str_hash
end
