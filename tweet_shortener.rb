# Write your code here
def dictionary
 {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(string)
  new_array = []
  dictionary_words = dictionary.keys #["hello", "to", "two", "too", etc.]
  words = string.split(" ") #["Hey", "guys", etc]
  words.each do |word|
    if dictionary_words.include?(word.downcase) == true
      new_array.push(dictionary[word.downcase])
    else
      new_array.push(word)
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  substitute_tweet = selective_tweet_shortener(tweet)
  if substitute_tweet.length > 140
    substitute_tweet[0..136] + "..."
  else
    tweet
  end
end
