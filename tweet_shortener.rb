require 'benchmark'

def dictionary()
  return hash = {
    "hello" => 'hi',
    "to" => '2', 
    "two" => '2', 
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"}
end

def word_substituter(tweet)
  return tweet.split.map do |word| 
    dictionary.keys.include?(word.downcase) ? dictionary[word.downcase] : word 
  end.join(" ")
  
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  subbed = word_substituter(tweet)
  return subbed.length > 140 ? subbed[0..136] + "..." : subbed
end
tweet = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real. sdfadf asdf asdf asdf asdf asdf"
# word_substituter(tweet)

puts Benchmark.measure { shortened_tweet_truncator(tweet) }