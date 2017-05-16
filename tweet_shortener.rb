def dictionary
list ={
  "hello" => 'hi',
    "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" =>'b',
  "you" => 'u',
  "at" => "@",
  "and"=>"&"
}
end

def word_substituter(tweet)
  new_tweet=[]
  dictionary
  tweet.split(" ").map do |word|
    if dictionary[word]!=nil
     word = dictionary[word]
      new_tweet << word
    else
      new_tweet << word
    end
  end
  return new_tweet.join(" ")
end 
