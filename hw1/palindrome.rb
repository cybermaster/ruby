class Palindrome
  def palindrome?(string)
    str1 = string[/[A-Za-z]/i]  #match the input string for text only and ignore case
    if str1.reverse == str1
      puts true
    else
      puts false
    end
  end
end