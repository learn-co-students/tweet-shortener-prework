# Write your code here.

def dictionary
   {
  :hello => "hi",
  :to => "2",
  :two => "2",
  :too => "2",
  :for => '4',
  :four => '4',
  :be => 'b',
  :you => 'u',
  :at => "@",
  :and => "&"
}
end

def word_substituter(tweet)
  array = tweet.split(" ")
  counter = 0
  array.each do |word|
      if dictionary.key?(word.to_sym) == true
        array[counter] = dictionary[word.to_sym]
      end
      counter += 1
  end
  return array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
    tweets = []
    tweet_array.each do |tweet|
        array = tweet.split(" ")
        counter = 0
        array.each do |word|
            if dictionary.key?(word.to_sym.downcase) == true
              array[counter] = dictionary[word.to_sym.downcase]
            end
            counter += 1
        end
        puts array.join(" ")
    end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    array = tweet.split(" ")
    counter = 0
    array.each do |word|
        if dictionary.key?(word.to_sym) == true
          array[counter] = dictionary[word.to_sym]
        end
        counter += 1
    end
    return array.join(" ")
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  array = tweet.split(" ")
  counter = 0
  array.each do |word|
      if dictionary.key?(word.to_sym) == true
        array[counter] = dictionary[word.to_sym]
      end
      counter += 1
  end
  return array.join(" ")[0..139]
end
