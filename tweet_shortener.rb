require 'pry'
def dictionary
    dictionary = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "For" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
    tweet_array = tweet.split
    i = 0
    while i < tweet_array.size
        dictionary.each do |long_word, short_word|
            if long_word == tweet_array[i]
                tweet_array[i] = short_word
            end
        end
        i += 1
    end
    tweet_array.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
   tweet = ""
   array_of_tweets.each do |x|
       tweet = x
       puts word_substituter(tweet)
   end
end

bulk_tweet_shortener(["ya fershure tho", "but like actually for real tho bro"])

def selective_tweet_shortener(tweet)
    if tweet.size > 140
        word_substituter(tweet)
    elsif tweet.size <= 140
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    result = ""
    result = word_substituter(tweet)
    if result.size > 140
        result.slice!(137..-1)
        result[137] = "..."
        result
    else
        selective_tweet_shortener(tweet)
    end
end
















