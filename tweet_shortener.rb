# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
   tweet_arr = tweet.split(" ")


  dictionary.keys.each do |w|
      tweet_arr.map! do |match|
        w == match ? dictionary[w] : match
      end
  end

   tweet_arr.join(" ")

end


def bulk_tweet_shortener(tweets)

  tweets.each do |tweet|
    tweet_array = tweet.split(" ")

    dictionary.keys.each do |w|
     tweet_array.map! do |match|
       w == match || w.capitalize   == match ? dictionary[w] : match
      end
    end
    puts tweet_array.join(" ")
  end

end


def selective_tweet_shortener(tweet)
  total_char = tweet.split("").length

  if total_char > 140
    word_substituter(tweet)
  elsif total_char < 140
    tweet
  end

end

def shortened_tweet_truncator(tweet)
  char_after_sub = selective_tweet_shortener(tweet).split("")

  if char_after_sub.count > 140
    char_after_sub.slice(0, 140).join("")
  elsif char_after_sub.count < 140
    char_after_sub.join("")
  end

end
