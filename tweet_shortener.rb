
def dictionary
  replace = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet_one)
  # replaces long words with their expected short form

    string = tweet_one.split(" ")
    string.map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
  end

end.join(" ")
end


def bulk_tweet_shortener (arr_tweet)
    arr_tweet.map do |word|
      puts word_substituter(word)
    end

end


def selective_tweet_shortener (tweet)

  tweet.length > 140 ? word_substituter(tweet) : tweet

end


def shortened_tweet_truncator (tweet)

    tweet.length > 140 ? word_substituter(tweet)[0...140] : tweet

end
