require 'pry'

def dictionary
    condenser = {
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


def word_substituter(string)
    result = []
    string.split.each do |word|
        if  dictionary.keys.include?(word.downcase)
            result << dictionary[word.downcase]
        else
            result << word
        end
    end
    result.join(" ")
end

def bulk_tweet_shortener(array)
    array.map do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(string)
    if string.length > 140
        word_substituter(string)
    else
        string
    end
end

def shortened_tweet_truncator(string)
    if selective_tweet_shortener(string).length > 140
        string[0...137] + "..."
    else
        string
    end
end
