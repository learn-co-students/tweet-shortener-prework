# Write your code here.

def dictionary
   hash = {
  "hello" => 'hi',
  "to" => "2",
  "two" => "2",
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
  final_string = []
  tweet_array = string.split(" ")

  tweet_array.each do | word |
    if dictionary.keys.include?(word.downcase)
      final_string << dictionary[word.downcase]
    else
      final_string << word
    end
  end

  final_string.join(" ")
end



def bulk_tweet_shortener(array)
  array.collect do | tweet |
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  shortenen_tweet = word_substituter(string)

  if shortenen_tweet.length > 140
    shortenen_tweet = shortenen_tweet[1..137] << "..."
  end

  shortenen_tweet
end
