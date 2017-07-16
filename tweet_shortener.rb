require 'pry'

def dictionary(word)
    dictionary = {
        "hello" => 'hi',
        "to" => '2',
        "two" => '2',
        "too" => '2',
        "for" => '4',
        "four" => '4',
        'be' => 'b',
        'you' => 'u',
        "at" => "@" ,
        "and" => "&"
    }

    dictionary.each do |key, value|
        if key.upcase == word.upcase
            return value
        end
    end
    return word
end

def word_substituter(tweet)
    tweet_array = tweet.split
    tweet_array.map! do |word|
        dictionary(word)
    end
    tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
    tweet_array.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        return word_substituter(tweet)
    else
        return tweet
    end
end

def shortened_tweet_truncator(tweet)
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
        short_tweet = short_tweet[0..135] + " ..."
    end
    return short_tweet
end
