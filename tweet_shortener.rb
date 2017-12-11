# Write your code here.
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
  "and" => "&",
  }
end

def word_substituter(string)
  results = []
  tweet_arr = string.split(" ")
  tweet_arr.each do |word|
    if dictionary.keys.include?(word.downcase)
      results << dictionary[word.downcase]
    else
      results << word
    end
  end
  results.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  result = string
  if string.size > 140
    result = word_substituter(string)
  end
  result
end

def shortened_tweet_truncator(string)
  result = word_substituter(string)
  if result.size > 140
    result = result[0..136] + "..."
  end
  result
end
