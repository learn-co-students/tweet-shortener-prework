require 'pry'

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
    tweet_array = tweet.split(" ")
    dictionary.keys.each do |key|
    #could use 'dictionary.each do |key,value|'
        tweet_array.each_with_index do |word,index|
            if key.upcase == word.upcase
                tweet_array[index] = dictionary[key]
                #if used 'dictionary.each', put '=value'
            end
        end
    end
    tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
    array_of_tweets.each do |tweet|
        puts word_substituter(tweet)
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
    new_tweet = selective_tweet_shortener(tweet)
    if new_tweet.length > 140
        new_tweet[140..(new_tweet.length - 1)] = ""
    end
    new_tweet
end
