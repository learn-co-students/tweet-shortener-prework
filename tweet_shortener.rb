# Write your code here.
def dictionary
  dictionary = {"hello" => 'hi',
  "to" => "2",
  "two" => "2",
  "too" => '2',
  "for" => "4",
  "For" => "4",
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"}
end

def word_substituter (tweet)

  tweet_arr = tweet.split(" ")
  keys = dictionary.keys
  final = ""

  tweet_arr.each do |word|
    pushed_word = ""
    keys.each do |sub|
      if sub === word
        pushed_word = dictionary[sub]
        word = pushed_word
      elsif sub != word
        pushed_word = word
      end
    end
    final += pushed_word + " "
  end
  final.chomp(" ")
end

def bulk_tweet_shortener (arr)
  arr.each do |tweet|
     puts word_substituter(tweet)
   end
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator (tweet)
  if tweet.length > 140
    tweet_new = tweet.slice(0,137)
    return tweet_new += "..."
  else
    return tweet
  end
end
