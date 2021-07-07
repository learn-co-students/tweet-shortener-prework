
def dictionary 
    dictionary = {
      "hello" => 'hi',
      "to" => '2',
      "too" => '2',
      "two" => '2',
      "for" => '4',
      "four" => '4',
      "be" => 'b',
      "you" => 'u',
      "at" => '@',
      "and" => '&'
    }
end
  
def word_substituter(str)
    result = []
    split_string = str.split(' ')
    the_keys = dictionary.keys
    split_string.each do |word|
        lowercase = word.downcase
        if the_keys.include?(lowercase)
        result << dictionary[lowercase]
        else
        result << word
        end
    end
    result.join(' ')
end

def bulk_tweet_shortener(arr)
    arr.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
   shortened_tweet = word_substituter(tweet)
   if shortened_tweet.length > 140
        shortened_tweet[0..136] + '...'
   else
    shortened_tweet
   end
end