# Write your code here.
def dictionary
  hash = {"hello"=>"hi", "to"=>"2", "two"=>"2", "too"=>"2", "for"=>"4", "four"=>"4", "be"=>"b", "you"=>"u", "at"=>"@", "and"=>"&"}
end


def word_substituter(string)
  string.split.map do |element|
    if dictionary.keys.include?(element.downcase)
      element = dictionary[element.downcase]
    else
      element
    end
  end.join(" ")
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
    return twet[0..136] + "..."
  else
    twet
  end
end
