def caesar_cipher(message, number)
  cipher = {
    "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10,
    "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19,
    "t" => 20, "u" => 21, "v" => 21, "w" => 23, "x" => 24, "y" => 25, "z" => 26
  }
  num1 = []
  answer = []
  i = 0
  message = message.downcase

  message.each_char do |char|
    if cipher.include?(char)
      num1 << cipher.fetch(char) + number
    else
      num1 << char
    end
  end

  while i < num1.length
      if num1[i].is_a?(Integer) && num1[i] > 26
          temp = num1[i] - 26
          num1[i] = temp
      end
    i += 1
  end

  num1.each do |item|
    if item.is_a?(Integer)
    answer << cipher.key(item)
    else
    answer << item
    end
  end


return answer.join
end

print caesar_cipher("What a string!", 5)
