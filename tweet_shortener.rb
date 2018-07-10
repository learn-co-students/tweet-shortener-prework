# Write your code here.
require'pry'

def dictionary 
substitutes = { 
  "hello" => "hi"
  "to" => '2'
  "two" => "2"
  "too" => "2"
  "for" => "4"
  "four" => "4"
  "be" => "b"
  "you" => "u"
  "at" => "@"
  "and" => "&"
}
end
  
  
  
def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary[word]   

end