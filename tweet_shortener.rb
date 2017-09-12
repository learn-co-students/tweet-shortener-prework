# Write your code here.
def dictionary
  dictionary = {"hello"=> "hi", "to"=> "2", "two"=> "2", "too"=> "2", "for"=> "4", "four"=> "4",
  "be"=> "b", "you"=> "u", "at"=> "@", "and"=> "&", "For"=>"4"}
end

def word_substituter(string)
  array = string.split(" ")
  array2 = []
  array.each do |word|
    if dictionary.keys.include?(word)
      array2 << dictionary[word]
    else
      array2 << word
    end
  end
  array2.join(" ")
end

def bulk_tweet_shortener(array)

  array.each do |phrase|
    puts word_substituter(phrase)
  end
end


def selective_tweet_shortener(tweet)

  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end

end

def shortened_tweet_truncator(tweet)
  tweety = word_substituter(tweet)
  if tweety.length > 140
    return tweety[0..136] + "..."
  else
    return tweety
  end
end
