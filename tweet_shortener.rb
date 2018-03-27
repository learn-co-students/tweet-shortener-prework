# Write your code here.
def dictionary (word)
    if word == "hello"
        word  = "hi"
    elsif word == "to" || word == "two" || word == "too"
        word = "2"
    elsif word == "for" || word == "four" || word == "For"
        word = "4"
    elsif word == "be"
        word = "b"
    elsif word == "you"
        word = "u"
    elsif word == "at"
        word = "@"
    elsif word == "and"
        word = "&"
    else
        word = word
    end
end

def word_substituter (tweet)
    array = tweet.split(" ")
    new_array = array.map {|key| key = dictionary(key)}
    new_array.join(" ")
end

def bulk_tweet_shortener (tweets)
    #binding.pry
    tweets.map {|x| puts word_substituter(x)}
    
    #puts "#{word_substituter(tweets)}"
    #word_substituter(tweets)
    end

def selective_tweet_shortener (tweets)
    if tweets.length <= 140
        tweets
    else
       word_substituter(tweets)
    end
end

def shortened_tweet_truncator (tweets)
    if tweets.length <= 140
        tweets = tweets
    else
        tweets = tweets[0..139]
        word_substituter(tweets)
    end
    tweets
end
    



