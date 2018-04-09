# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words.nil? || my_words.length == 1
    return my_words
  end

  word_begin = 0
  word_length = 0

  while word_begin < my_words.length
    if my_words[word_begin] == " "
      word_begin += 1
      word_length += 1
    elsif word_length == my_words.length || my_words[word_length] == " "
      word_end = word_length - 1
      while word_begin < word_end
        temp_char = my_words[word_begin]
        my_words[word_begin] = my_words[word_end]
        my_words[word_end] = temp_char
        word_begin += 1
        word_end += 1
      end
      word_begin = word_length + 1
      word_length += 1
    else
      word_length += 1
    end
  end
end
