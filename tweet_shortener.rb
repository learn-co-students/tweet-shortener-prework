# Write your code hd
def dictionary 
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
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
  string_array = string.split(" ")
  string_array
  string_array.each do |word| 
    dictionary.each do |k, v|
      if word == k 
        word.replace(v)
      end
    end
  end
    short_tweet = string_array.join(" ")
    short_tweet
end

def bulk_tweet_shortener(array)
  array.each do |string|
   puts word_substituter(string)
  end
end
  
def selective_tweet_shortener(string)  
  if string.length > 140
    string_array = string.split(" ")
    string_array
    string_array.each do |word| 
      dictionary.each do |k, v|
        if word == k 
        word.replace(v)
        end
      end
    end
    short_tweet = string_array.join(" ")
    short_tweet
  else
    string 
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    truncated = string.slice(0, 137)
    truncated + "..."
  else
    string
  end
end
  
  
  
  
  
  
  
  
  
  

