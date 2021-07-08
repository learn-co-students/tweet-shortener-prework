# Write your code here.
def dictionary
    tweet_dict = {
        "hello" =>'hi',
        "to" => '2',
        "two" => '2',
        "too" => '2',
        "for" => '4',
        "four" => '4',
        'be' => 'b',
        'you' => 'u',
        "at" => "@",
        "and" => "&"
    }

end

def word_substituter(tweet)

    short = dictionary.keys
    words = tweet.split(" ")
    words.map { |word| short.include?(word.downcase) ? dictionary[word.downcase] : word }.join(" ")


end

def bulk_tweet_shortener(tweets) 
    short = dictionary.keys

    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    return word_substituter(tweet) if tweet.length > 140
    tweet
end

def shortened_tweet_truncator(tweet)
    if tweet.length < 140
        tweet
    else
        tweet[0..136] + "..."
    end

end
