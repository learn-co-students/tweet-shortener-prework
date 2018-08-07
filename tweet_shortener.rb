# Write your code here.

def dictionary
  dictionary_hash = {

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
  dictionary_hash
end


#Question 1

def word_substituter(string)

  words = string.split
  new_array = []

  words.map do |word|
    if dictionary.keys.include?(word)
    	word = dictionary[word]
    elsif word == "For"
      word.downcase!
      if dictionary.keys.include?(word)
        word = dictionary[word]
      end
    end
    new_array << word
  end

	new_array.join(" ")
end

#Question 2

def bulk_tweet_shortener(tweets)

  tweets.each do |tweet|
    puts word_substituter(tweet)
  end

end


#Question 3

def selective_tweet_shortener(string)
  if string.length < 140
    string
  elsif string.length > 140
    words = string.split
    new_array = []

    words.map do |word|
      if dictionary.keys.include?(word)
      	word = dictionary[word]
      elsif word == "For"
        word.downcase!
        if dictionary.keys.include?(word)
          word = dictionary[word]
        end
      end
      new_array << word
    end

  	new_array.join(" ")
  end


end

#Question 4

def shortened_tweet_truncator(tweet)

  if tweet.length < 140
    tweet
  elsif tweet.length > 140
    return "#{tweet[0..136]}..."
  end

end
