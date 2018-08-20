# Write your code here.
def dictionary
  dictionary_hash = {
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
  dictionary_hash
end

def word_substituter(string)
  array = []
  string.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary.each do |key, value|
        if word.downcase == key
          array << value
        end
      end
    else
      array << word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |sentence|
    puts word_substituter(sentence)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    new_tweet[137..-1] = "..."
  end
  new_tweet
end
