# Write your code here.
def word_substituter(tweet)
    tweet.split(" ").collect! do |word|
        dictionary(word)
    end.join(" ")
end

def dictionary(word)
    w = word.downcase
    my_dict = {
        "hello" => 'hi',
        "to" => '2',
        "two" => '2',
        "too" => '2',
        "for"  => '4',
        "four" => '4',
        "be" => 'b',
        "you" => 'u',
        "at" => '@',
        "and" => '&'
    }
    my_dict.keys.include?(w) ? my_dict[w] : word
end


def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
        return word_substituter(tweet)
    end
    tweet
end

def tweet_shortener(tweet)

end

def shortened_tweet_truncator(tweet)
    t = word_substituter(tweet)
    if t.size >= 140
        return t[0..136] + "..."
    end
    tweet
end
