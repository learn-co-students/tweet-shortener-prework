# Write your code here.
def word_substituter(str)
  words_to_check = str.split(" ")
  final = []
  words_to_check.each do |word|
    final << dictionary(word)
  end
  final = final.join(" ")
  return final
end


def dictionary(word)
  dict_words = {"hello" => "hi", "to" => 2, "too" => 2, "two" => 2, "for" => 4, "four" => 4, "be" => "b", "you" => "u", "at" => "@", "and" => "&", "For" => 4}

  if dict_words.keys.include?(word)
    return dict_words[word]
  else
    return word
  end


end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    final = word_substituter(tweet)
  else
    return tweet
  end
  if final.length > 139
    return final[0..139]
  end

  final

end 
