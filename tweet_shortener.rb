# Write your code here.

def dictionary
  dictionary = {
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

tweet1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet2 = "For real, for real"

def word_substituter(tweet)
  array = tweet.split
  dict_keys = dictionary.keys
  array.map { |word|
    (dict_keys.include?(word.downcase)) ? word = dictionary[word.downcase] : word
  }.join(" ")
end

word_substituter(tweet2)
def bulk_tweet_shortener(tweets)
  tweets.each { |tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  tweet.length <= 140 ? tweet : word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  (selective_tweet_shortener(tweet).length <= 140) ? tweet : "#{tweet[0...137]}..."
end
