def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  shortened_array = []
  tweet_array.each do |word|
    if dictionary.keys.include?(word.downcase)
      shortened_array << dictionary[word.downcase]
    else
      shortened_array << word
    end
  end
  shortened_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
   tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  shortened_tweet.length > 140 ? "#{shortened_tweet[0..136]}..." : shortened_tweet
end

 


















