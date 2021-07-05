def dictionary
	dictionary = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
	tweet.split.map do |tweet_words|
		if dictionary.keys.include?(tweet_words.downcase)
			tweet_words = dictionary[tweet_words.downcase]
		else
			tweet_words
		end
	end.join(" ")
end

def bulk_tweet_shortener(tweet)
	tweet.each do |tweets|
		puts word_substituter(tweets)
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
	if tweet.length > 140
		tweet[0..136] + "..."
	else
		tweet
	end
end