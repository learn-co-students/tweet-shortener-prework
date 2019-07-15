require "pry"

def dictionary
     dictionary = {
        "hello" => "hi",
        "to" => 2,
        "two" => 2,
        "too" => 2,
        "four"=> 4,
        "for"=> 4,
        "be"=> "b",
        "you"=> "u",
        "at"=> "@",
        "and"=> "&"
}
    end

def word_substituter(tweet)
    # replaces long words with their expected short form
    tweet.split(" ").map do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
            else
            word
            end
        end.join(" ")
  end

def bulk_tweet_shortener(arr_of_tweets)
    arr_of_tweets.map do |tweet|
        puts word_substituter(tweet)
        end
    end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        # I originally made the mistake of using puts which returns a nil value.
            return word_substituter(tweet)
        else
            tweet
        end
    end


def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        new_tweet = word_substituter(tweet)
        if new_tweet.length > 140
            final_tweet = "#{new_tweet[1..136]} ..."
            end
    else
        tweet
    end
end
    

