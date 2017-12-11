# Write your code here.
def dictionary
  {"hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => "@",
  "and" => '&'}
end

def word_substituter(string)
  array = string.split(' ')
  edited_array = []
  array.each do |word|
    if dictionary.key?(word.downcase)
      edited_array << word.sub(word, dictionary.fetch(word.downcase))
    else
      edited_array << word
    end
  end
  edited_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    string[0..136] + "..."
  else
    string
  end
end
