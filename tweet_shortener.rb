# Write your code here.

def dictionary
    
    dictionary = {
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

def word_substituter(str)
    str.split.map do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweets_arr)
    tweets_arr.each do |word|
        puts word_substituter(word)
    end
end

def selective_tweet_shortener(str)
    if str.length > 140
        word_substituter(str)
    else
        str
    end
end

def shortened_tweet_truncator(str)
    if word_substituter(str).length > 140
        word_substituter(str)[0..137] + ".."
    else
        str
    end
end
