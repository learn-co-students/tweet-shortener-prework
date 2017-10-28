# Write your code here.
def dictionary
  words_to_be_substituted = {
    "hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "For" => "4"
  }
end

def word_substituter(string)
  string_words = string.split(" ")
  new_array = []
  string_words.each do |word|
    if dictionary.keys.include?(word)
      new_array.push(dictionary[word])
    else
      new_array.push(word)
    end
  end
  new_array.join(" ")
end

# puts dictionary[]

string = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
  "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
]

# puts word_substituter(string)

def bulk_tweet_shortener(tweet)
  tweet.each do |word|
    puts word_substituter(word)
  end
end

# bulk_tweet_shortener(string)

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

tweat = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def shortened_tweet_truncator(string)
  if string.length > 140
    new_string = string[0..136] + "..."
    new_string
  else
    string
  end
end

shortened_tweet_truncator(tweat)
