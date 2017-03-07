require "pry"

#tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

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

def word_substituter(tweet)
  tweet_array = []
  keys_array = []
  new_tweet = []

tweet_array = tweet.split(" ")
keys_array = dictionary.keys


tweet_array.each do |word|

  if keys_array.include?(word.downcase)

    word = dictionary[word.downcase]

  else

    word
end

    new_tweet << word

end


  new_tweet.join(" ")

end


def bulk_tweet_shortener(tweet_array)

tweet_array.each do |tweet|

puts word_substituter(tweet)

end



end



def selective_tweet_shortener(tweet)

if tweet.size > 140

word_substituter(tweet)

else

  tweet

end

end


def shortened_tweet_truncator(tweet)

new_tweet = selective_tweet_shortener(tweet)

if new_tweet.size > 140

  output = new_tweet[0..136] + "..."



else

  tweet
end


end
