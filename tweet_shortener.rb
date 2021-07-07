# Write your code here.
def dictionary(lookup)
  words_2_shorten ={"hello"=>'hi',
                    "to"=>'2', "two"=>'2', "too"=>'2',
                    "for"=>'4', "four"=>'4',
                    "be"=>'b',
                    "you"=>'u',
                    "at"=>'@',
                    "and"=>'&'}
  if words_2_shorten.keys.include?(lookup.downcase)
    shortened_lookup = nil
    words_2_shorten.each do |word, shortver|
      if lookup.downcase == word
        shortened_lookup = shortver
      end
    end
    shortened_lookup
  else
    lookup
  end
end

def word_substituter(tweet)
  tweet.split(" ").collect do |word|
    dictionary(word)
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |t|
    puts word_substituter(t)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.length < 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    "#{word_substituter(tweet)[0..136]}..."
  elsif word_substituter(tweet).length <= 140
    word_substituter(tweet)
  end
end
