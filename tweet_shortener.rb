# Write your code here.
def dictionary
  {
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

def word_substituter(tweet)
  new_tweet = []
  tweet.split(" ").each do |x|
    if dictionary.keys.include?(x.downcase) == true
      new_tweet << dictionary[x.downcase]
    else
      new_tweet << x
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    new_tweet = []
    tweet.split(" ").each do |x|
      if dictionary.keys.include?(x.downcase) == true
        new_tweet << dictionary[x.downcase]
      else
        new_tweet << x
      end
    end
    puts "#{new_tweet.join(" ")}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    new_tweet = []
    tweet.split(" ").each do |x|
      if dictionary.keys.include?(x.downcase) == true
        new_tweet << dictionary[x.downcase]
      else
        new_tweet << x
      end
    end
      new_tweet.join(" ")
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = []
    tweet.split(" ").each do |x|
      if dictionary.keys.include?(x.downcase) == true
        new_tweet << dictionary[x.downcase]
      else
        new_tweet << x
      end
    end
    if new_tweet.join(" ").length > 140
      new_tweet.join(" ")[0..136] + "..."
    else
      new_tweet.join(" ")
    end
  else
    tweet
  end

end
