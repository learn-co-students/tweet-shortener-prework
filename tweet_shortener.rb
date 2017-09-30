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

def word_substituter(tweet)
  new_array = []
  tweet.split(' ').each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      new_array << word
    else
      new_array << word
    end
  end
  new_array.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweets|
    puts word_substituter(tweets)
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
  if word_substituter(tweet).size > 140
    tweet[0..136] + '...'
  else
    tweet
  end
end
