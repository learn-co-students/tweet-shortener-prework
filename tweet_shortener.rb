# Write your code here.
def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '2',
    'four' => '2',
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
    word_substituter(tweet)
  end
end
