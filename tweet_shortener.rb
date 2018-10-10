# Write your code here.
require "pry"

def dictionary
	words = {
		"hello" => 'hi',
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"for" => "4",
		"For" => "4",
		"four" => "4",
		"be" => "b",
		"you" => 'u',
		"at" => "@",
		"and" => "&"
	}
end

def word_substituter(tweet)
	tweet_array = tweet.split
	tweet_array.each_with_index do | word, index |
		if dictionary.keys.include?(word)
			tweet_array[index] = dictionary[word]
		end
	end	
	tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
	array.each do | phrase |
		 puts word_substituter(phrase)
	end
end

def selective_tweet_shortener(string)
	if string.length > 140
		word_substituter(string)
	else
		return string
	end
end

def shortened_tweet_truncator(string)
	if string.length > 140
		return string[0..139]
	else
		return string
	end
end