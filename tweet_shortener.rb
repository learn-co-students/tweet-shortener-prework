# Write your code here.

#hash containing words to replace as keys and replacement words as values, will be used to substitute words in word substittuer
def dictionary(word)
    synonyms = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&" }
     
    dictionary_keys = synonyms.keys
    new_word = word 

    dictionary_keys.each do |key|
        if word.downcase == key
            new_word = synonyms[word.downcase]
        end
    end
    return new_word

end

def word_substituter(tweet)
    #turn tweet string into array
    tweet_array = tweet.split(" ")
    shortened_tweet_array = []

    #For each element of the array, compare each element of the array against the dictionary keys
    #if an element matches the dictionary key, replace it with the dictionary value
    tweet_array.each_with_index do |item, index|
        shortened_tweet_array[index] = dictionary(item)
    end

    #turn the array back into a string
    shortened_tweet_string = shortened_tweet_array.join(" ")

    #return the string? or print?
    return shortened_tweet_string
end

def bulk_tweet_shortener(array_of_tweets)
    shortened_array_of_tweets = []
    array_of_tweets.each do |tweet|
        shortened_tweet = word_substituter(tweet)
        puts shortened_tweet
        shortened_array_of_tweets.push(shortened_tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.size <= 140
        tweet
    else
       new_tweet = word_substituter(tweet)
       if new_tweet.size > 140
        new_tweet[137..-1] = "..."
       end
       new_tweet
    end
end
