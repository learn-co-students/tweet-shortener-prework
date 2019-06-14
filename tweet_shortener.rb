# Write your code here.
paragraph = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def dictionary
  convert = {
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
    tweet_one.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.map do |paragraph|
    puts word_substituter(paragraph)
  end
end

def selective_tweet_shortener(tweet_one)
    if tweet_one.length > 140
      word_substituter(tweet_one)
      elsif tweet_one.length <= 140
      tweet_one
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
      word_substituter(tweet)[0..136] + "..."
    else
      word_substituter(tweet)
    end
end 