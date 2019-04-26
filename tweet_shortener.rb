# Write your code here.
require "pry"
def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end
def word_substituter(string)
  string.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
       word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

 def bulk_tweet_shortener(string)
   string.map do |phrase|
    puts word_substituter(phrase)
  end
 end
 def selective_tweet_shortener(tweet)
   if tweet.chars.length > 140  
    word_substituter(tweet)
     else
       tweet
     end
   end
 
 def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).chars.length > 140  
    truncated = word_substituter(tweet).chars[0...137].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 

 
















  