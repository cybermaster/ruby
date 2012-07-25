def combine_anagrams(words)
  #using sorted word as hash-key, words as values
  wordsList = Hash.new(Array.new())
  #result = Array.new()

  words.each do |w|
    #using sorted word as hash key
    hashKey = w.downcase.split("").sort.join("")
    wordsList[hashKey] += [w]
  end

  #flatten hash to an array
  #result = wordsList.flatten
  #
  #(0..result.length).step(1).each do |k|
  #  result.delete_at(k)
  #  end
  #p result

  p wordsList.values

end



#test
arr = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']


