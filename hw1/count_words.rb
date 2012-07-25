def count_words(string)
  wordsCount = Hash.new(0)

  str1 = string.gsub(/[^a-zA-Z0-9_']/, " ") #change any non words to space
#  str1 = str1.downcase.gsub(/\b/, "")       #delete word boundary

  str1.downcase.split(/\s/).each do |word|
    wordsCount[word] += 1
  end
  puts wordsCount
end

#test
count_words("A man, a plan, a canal -- Panama")

count_words("If you're new to Git, you may think that this is too much overhead and one that leads to a breakdown of control. Look at it this way: if your central server goes down, you're usually hosed and prevented from working and collaborating with others.")
