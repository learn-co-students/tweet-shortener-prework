# Write your code here.

def dictionary
    dictionary = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" =>"4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(string)
    string_array = string.split(" ")
    new_array = []
    string_array.each do |word|
        downcase = word.downcase
        if dictionary.keys.include? downcase
            new_array << dictionary[downcase]
        else new_array << word
        end
    end
    new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each {|array| puts word_substituter(array)}
end

def selective_tweet_shortener(array)
        if array.split(//).length <= 140
            array
            else word_substituter(array)
        end
end

def shortened_tweet_truncator(tweet)
    if tweet.split(//).length <= 140
        tweet
    else
        array = tweet.split(//)
        array_two = array[0..136] + [".",".","."]
        array_two.join
    end
end
