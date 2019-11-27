require 'pry'

def dictionary
    words = {
        "hello" =>  "hi",
        "to" => "2" ,
        "two" => "2" ,
        "too" => "2" ,
        "for" => "4",
        "four" => "4",
        "be" =>  "b",
        "you" =>  "u",
        "at" =>  "@" ,
        "and" =>  "&"
    }
end

def word_substituter(tweet)
    tweet_array = tweet.split(" ")
    tweet_array.each_with_index do |word, index| 
        if dictionary.keys.index(word.downcase)
            # binding.pry
            tweet_array[index] = dictionary.values[dictionary.keys.index(word.downcase)]
        end
    end
    return tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
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
    shortened_tweet = selective_tweet_shortener(tweet)
    if shortened_tweet.length > 140
        # binding.pry
        return shortened_tweet[0...136] + " ..."
    else 
        shortened_tweet
    end
end


# p dictionary