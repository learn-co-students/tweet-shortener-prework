# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&",
  }
end

def word_substituter(str)
  words = str.split(' ')
  words.map { |word| dictionary.dig(word.downcase) ? dictionary[word.downcase] : word }.join(' ')
end

def bulk_tweet_shortener(ary)
  ary.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  result = selective_tweet_shortener(str)
  result[0...140]
end
