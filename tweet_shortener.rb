def word_substituter(tweet)

  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4"
  }

  tweet_arr = tweet.split
  tweet_arr.each_with_index {|el, idx| tweet_arr[idx] = dictionary[el.downcase] if dictionary.keys.include?(el.downcase)}
  tweet_arr.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet2 = selective_tweet_shortener(tweet)
  tweet2.length > 140 ? "#{tweet2[0...137]}..." : tweet2
end
