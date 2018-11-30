# Write your code here.
def dictionary(words)
  words-to-be-substituted ={
    hello:"hi",
    to:"2",
    two:"2",
    too:"2",
    for:"4",
    four:"4",
    be:"b",
    you:"u",
    at:"@",
    and:"&"
  }
end

def word_substituter(string)
  words-to-be-substituted.each do |words|
  string.split(",")
  string.keys
  string.each do |word|
    if word == words
      word = words.value
  string.join
end

def bulk_tweet_shortener(array)
  array.each do word_substituter |word|
    puts array
    puts bulk_tweet_shortener
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet.each do bulk_tweet_shortener |word|
end

def shortened_tweet_truncator(tweet)
  puts tweet[0..140]
end
