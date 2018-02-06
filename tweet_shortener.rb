def word_substituter(tweet)
    subs = {'hello'=>'hi', 'to'=>'2', 'two'=>'2' ,'too'=>'2', 'for'=>'4', 'four'=>'4', 'be'=>'b', 'you'=>'u', 'at'=>'@', 'and' => '&'}
    words = tweet.split
    new_tweet = words.collect do |word|
        if subs.has_key?(word.downcase)
            subs[word.downcase]
        else
            word
        end
    end
    new_tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        tweet = tweet[0..139]
    end
    tweet
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        tweet = tweet[0..136] + '...'
    end
    tweet
end
