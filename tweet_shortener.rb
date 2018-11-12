require 'pry'

def dictionary
  dict = {
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
  # puts dict
end

dictionary

def word_substituter(tweet)
  tweet_incoming_array = []
  tweet_outgoing_array = []
  tweet.split(" ").collect do |word|
    tweet_incoming_array << word
  end
  tweet_incoming_array.each do |word|
    # binding.pry
    if dictionary.keys.include?(word)
      tweet_outgoing_array << dictionary[word]
    elsif dictionary.keys.include?(word.downcase)
      tweet_outgoing_array << dictionary[word.downcase]
    else
      tweet_outgoing_array << word
    end
  end
  return tweet_outgoing_array.join(" ")
  # tweet_array.collect do |word|
    # dictionary.keys.each do |key|
      # key.each do |k|
      #   if word = k
      #   end
      # end
    # end

  # end
  # puts tweet_array.join(" ")
end

# word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    # puts "this"
    return word_substituter(tweet)
  else
    # puts "that"
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = ""
  if selective_tweet_shortener(tweet).length > 140
    shortened_tweet << selective_tweet_shortener(tweet)[0..136]
    shortened_tweet << "..."
    return shortened_tweet
  else
    return tweet
  end
end
