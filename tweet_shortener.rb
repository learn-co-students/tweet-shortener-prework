# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  tweet_array = string.split
  dic_keys = dictionary.keys
  tweet_array.each do |word|
    dic_keys.each do |key|
      if word == key
        tweet_array[tweet_array.index(word)] = dictionary[key]
      end
    end
  end
 tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
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
  if string.length > 140
    short_string = word_substituter(string)
    short_string[0...140]
  else
    string
  end
  
end