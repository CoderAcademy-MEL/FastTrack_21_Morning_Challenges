def word_ranking(words)
    highest = {
      word: '',
      score: 0
    }
    words.split('')

    .each do |word|
      current_score = word_score(word)
      if highest[:score] < current_score
        highest[:word] = word
        highest[:score] = current_score
      end
    end
    p highest[:word]
    p highest[:score]
  end
  def word_score(word)
    word.chars.reduce(0) do |points, letter| 
      points += letter_score(letter)
    end
  end
  def letter_score(letter)
    letter_points = ('a'..'z').to_a
    letter_points.index(letter) + 1
  end
