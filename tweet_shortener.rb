require 'pry'

# Write your code here.
def dictionary 
    webster = {
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
        tweet.split(" ").map do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else 
         word
        end
    end.join(" ")
end 

def bulk_tweet_shortener(tweets)
    tweets.map do |tweek|
        puts word_substituter(tweek)
    end
end 

def selective_tweet_shortener(tweet_one)
    if tweet_one.length > 140 
        word_substituter(tweet_one)
    else 
        tweet_one
    end
end

def shortened_tweet_truncator(tweet_three)
    if tweet_three.length > 140 
        selective_tweet_shortener(tweet_three)
        if tweet_three.length > 140
            tweet_three[0...140]
        end 
    else 
        tweet_three
    end 
end 