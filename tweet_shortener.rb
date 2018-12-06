require 'pry'

def dictionary
  dictionary =
  {
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
  tweet_array = tweet.split

  tweet_array.each_with_index do |tweet_word, ind|
    dictionary.each do |word, sub|
      if tweet_word.downcase == word
        tweet_array[ind] = sub
      end
    end
  end

  # iterates dictionary first instead of tweet
  # dictionary.each do |word, sub|
  #   tweet_array.each_with_index do |tweet_word, ind|
  #     if word == tweet_word
  #       tweet_array[ind] = sub
  #       #binding.pry
  #     end
  #   end
  # end


  tweet_array.join(" ")

  # test code that prints check for each matched key, this is
  # how it knew my iteration logic was correct and that my
  # value assignment was wrong

  # tweet_array.each do |tweet_word|
  #   dictionary.keys.each do |word|
  #     if (tweet_word == "#{word}")
  #       tweet_word =  "check"
  #     end

end

#z = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!","OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"]

def bulk_tweet_shortener(tweets)
  tweets.each_with_index do |tweet, ind|
    puts word_substituter(tweets[ind])
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
  if word_substituter(tweet).length >= 140
    "#{word_substituter(tweet)[0..135]} ..."
  else
    tweet
  end
end
