require 'pry'

def dictionary
  dictionary = {
    'hello' => "hi",
    'to' => "2",
    'two' => "2",
    'too' => "2",
    'for' => "4",
    'four' => "4",
    'be' => "b",
    'you' => "u",
    'at' => "@",
    'and' => "&"
  }
end

def word_substituter(tweet)

  tweet.split.collect! do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

# -------------------------------
# also works (below)
# -------------------------------

# def word_substituter(tweet)
#   tweet_arr = tweet.split(" ")
#
#   keys = dictionary.keys
#   values = dictionary.values
#
#
#   tweet_arr.map do |word|
#     if (word == keys[0])
#       values[0]
#     elsif (word == keys[1])
#       values[1]
#     elsif (word == keys[2])
#       values[2]
#     elsif (word == keys[3])
#       values[3]
#     elsif (word == keys[4])
#       values[4]
#     elsif (word == keys[5])
#       values[5]
#     elsif (word == keys[6])
#       values[6]
#     elsif (word == keys[7])
#       values[7]
#     elsif (word == keys[8])
#       values[8]
#     elsif (word == keys[9])
#       values[9]
#     else
#       word
#     end
#   end.join(" ")
# end


# def word_substituter(tweet)
#
#   tweet_arr = tweet.split(" ")
#
#   keys = dictionary.keys
#   values = dictionary.values
#
#   tweet_arr.map do |x|
#     if dictionary.keys.include?(x.downcase)
#       x = dictionary[x.downcase]
#     else
#       x
#     end
#   end.join(" ")
# end

# ------------------------------
# to make this pass we simply have to pass it the method 'word_substituter' and
# 'puts' it out.

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
    end
    #binding.pry
end

# ------------------------------
# to make this pass we are again simply passing our 'word_substituter' method
# into the selective_tweet_shortener method

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end


# ------------------------------
# to make this pass we are again simply passing our 'word_substituter' method
# into the shortened_tweet_truncator method in the else section.

# here word_substituter substitutes the words that need to be, and then caps the
# tweet at 140 characters max.

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)[0...140]
  end
end
