def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(string)
  replacements = dictionary
  result = []
  string.split(' ').each do |word|
    if replacements[word.downcase]
      result << replacements[word.downcase]
    else
      result << word
    end
  end
  result.join(' ')
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
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
    tweet[0..136] + "..."
  else
    tweet
  end
end
