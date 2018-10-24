# Write your code here.
def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

 def word_substituter(string)
   new_string = string.split(" ")
   new_string.each do |word|
     dictionary.each do |key, value|
       if word == key
         word.replace(value)
end
end
end
new_string.join(" ")
end

def bulk_tweet_shortener(tweet)

tweet.each do |strings|
puts   word_substituter(strings)
end
end

def selective_tweet_shortener(short_tweet)
  if short_tweet.length > 140
    word_substituter(short_tweet)
  else
    short_tweet
end
end

def shortened_tweet_truncator(shortened_tweet)
  if shortened_tweet.length > 140
    cut_it = shortened_tweet.slice(0, 137)
    cut_it + "..."
  else
    shortened_tweet
  end
end










#   string_array = string.split(" ")
# string_array.each do |word|
#     dictionary.each do |k, v|
#       if word == k
#         word.replace(v)
#       end
#     end
#   end
#     short_tweet = string_array.join(" ")
#     short_tweet
# end
