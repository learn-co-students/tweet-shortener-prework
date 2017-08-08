# Write your code here.
def dictionary
  hash = {"hello"=>"hi", "to"=>"2", "two"=>"2", "too"=>"2", "for"=>"4", "four"=>"4", "For"=>"4", "be"=>"b", "you"=>"u", "at"=>"@", "and"=>"&"}
end


def word_substituter(string)
  string_to_array = string.split
  string_to_array.each do |element|
    dictionary.each do |word, substitute|
      if word == element
        string_to_array[string_to_array.index(element)].sub!(word, substitute)
      end
    end
  end
  string_to_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |element_one|
    puts word_substituter(element_one)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(twet)
  if selective_tweet_shortener(twet).length > 140
    return twet[0..139]
  else
    twet
  end
end
