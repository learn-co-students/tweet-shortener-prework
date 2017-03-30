def dictionary
 the_dictionary = {
   'hello' => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" =>"4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
 }
end

def word_substituter(long_version)
  the_dictionary = {
    'hello' => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" =>"4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  yet_another_holder = []
  holder = []
  keys = the_dictionary.keys
  tweet_word_by_word = []
  tweet_word_by_word = long_version.split(" ")

  tweet_word_by_word.collect { |ele|
    if keys.include? ele
      ele = the_dictionary[ele]
      holder << ele

    else holder << ele
    end
      }

  holder.each.with_index(1) { |e, i|

    if i == holder.length
      yet_another_holder << e

    else yet_another_holder << e + " "

    end
  }
  return yet_another_holder.join("")
end


def bulk_tweet_shortener(tweets)

  tweets.each { |e|
    puts word_substituter(e)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
   word_substituter(tweet)
  else tweet
  end
end

def shortened_tweet_truncator(tweet)

  tweet_ary = ""
  tweet_ary << tweet[0..139]

  product = tweet_ary

  return product



end
