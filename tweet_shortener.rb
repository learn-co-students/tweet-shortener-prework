# Write your code here.
def dictionary
  dict = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end

def word_substituter(str)
  strArr = str.split
  strArr.each do |word| 
    dictionary().any? do |k,v| 
      if k == word.gsub(/(\W|\d)/, "").downcase
        strArr[strArr.index(word)] = dictionary()[k]
      end
    end
  end
  strArr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet| 
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else 
    str
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    "#{word_substituter(str)[0..136]}..."
  else 
    str
  end
end

