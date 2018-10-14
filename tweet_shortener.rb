require "pry"

def dictionary()
  dictionary = {
    # hello: 'hi',
    # to: '2',
    # two: '2',
    # too: '2',
    # for: '4',
    # four: '4',
    # be: 'b',
    # you: 'u',
    # at: "@",
    # and: "&"
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'For' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  sentence = string.split(" ")
  sentence.each_with_index do |word, index|
    if dictionary.keys.include?(word)
      sentence[index] = dictionary[word]
    end
  end
  sentence.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each_with_index do |tweet, index|
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
  if tweet.length > 140
    "#{tweet[0..136]}..."
  else
    tweet
  end
end
