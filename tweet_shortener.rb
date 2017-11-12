# Write your code here.
def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'For' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweet)
  string_array = tweet.split(' ')
  string_array.each_with_index do |string, index|
    dictionary.each do |word, abbrev|
      if string == word
        string_array[index] = abbrev
      end
    end
  end
  string_array.join(' ')
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
  if tweet.length > 140
    word_substituter(tweet)
    if word_substituter(tweet).length > 140
      "#{tweet[0..136]}..."
    end
  else
    tweet
  end
end
