def dictionary(word)
    short_words = {
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
    
    if short_words[word.downcase] == nil
        word
    else
        short_words[word.downcase]
    end
end

def word_substituter(tweet)
    shortened = []
    
    tweet.scan(/[\w']+|[[:punct:]]+|[\s]+/) do |word|
        shortened << dictionary(word)
    end
    
    shortened.join("")
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
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
        short_tweet[0...137] + "..."
    else
        short_tweet
    end
end