# Write your code here.

def dictionary 
  check = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => 'b',
    "you" => "u",
    "at" => "@",
    "and" => "&"
  } 
  check
end


def word_substituter(current_tweet)
  clean_tweet = []
  current_tweet.split(" ").each do |word|
    dictionary.keys.include?(word.downcase) ? clean_tweet << dictionary[word.downcase] : clean_tweet << word
  end
  clean_tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet| 
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(current_tweet)
  current_tweet.length > 140 ? word_substituter(current_tweet) : current_tweet 
end

def shortened_tweet_truncator(current_tweet)
  clean_tweet = selective_tweet_shortener(current_tweet)
  clean_tweet.length > 140 ? clean_tweet[0..136] << "..." : clean_tweet
end
  
