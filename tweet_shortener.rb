# Write your code here.

def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => "2",
    "too" => "2",
    "for" => '4',
    "four" => "4",
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |index|
    if dictionary.keys.include?(index.downcase)
      index = dictionary[index.downcase]
    else
      index
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |tweet|
    puts word_substituter(tweet)
  end
end
