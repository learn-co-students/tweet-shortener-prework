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
	dict = dictionary
	tweet_array = tweet.split(' ')
	dict.each do |word, sub|
		tweet_array.each_with_index do |str, index|
			tweet_array[index] = sub if str.downcase == word
		end
	end
	tweet = tweet_array.join(" ")
	tweet
end

def bulk_tweet_shortener(tweet_array)
	tweet_array.each_with_index do |tweet, index|
		tweet_array[index] = word_substituter(tweet)
		puts tweet_array[index]
	end
end

def tweet_length(tweet)
	tweet.split("").size
end

def selective_tweet_shortener(tweet)
	if tweet_length(tweet) > 140
		word_substituter(tweet)
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	if tweet_length(word_substituter(tweet)) > 140
		word_substituter(tweet)[1..140]
	elsif tweet_length(tweet) < 140
		tweet
	end
end