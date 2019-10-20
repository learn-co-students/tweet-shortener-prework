#dictionary method with word keys and replacement values
def dictionary
	subs = {
	hello: "hi",
	Hello: "hi",
	to: "2",
	To: "2",
	two: "2",
	Two: "2",
	too: "2",
	Too: "2",
	for: "4",
	For: "4",
	four: "4",
	Four: "4",
	be: "b",
	Be: "b",
	you: "u",
	You: "u",
	at: "@",
	and: "&"
	}
end

#method to take tweet and shorten it with dictionary k/v pairs
def word_substituter(tweet) 
	final_tweet_array = []
	tweet_array = tweet.split(" ")
	keys = dictionary.keys
	tweet_symbols = []
	tweet_array.each do |word|
		tweet_symbols << word.to_sym
	end
	shortened_tweet_array = []
	tweet_symbols.each do |symbol|
		if keys.include?(symbol)
			symbol = dictionary[symbol]
			shortened_tweet_array << symbol
		else
			shortened_tweet_array << symbol
		end
	end
	shortened_tweet_array.each do |symbol|
		final_tweet_array << symbol.to_s
	end
	final_tweet_array.join(" ")
end

#method to take in and shorten tweet batch
def bulk_tweet_shortener(array_of_tweets)
	array_of_tweets.each do |tweet|
		puts word_substituter(tweet)
	end
end

#method that only shortens tweets that are > 140 char
def selective_tweet_shortener(tweet)
	if tweet.size > 140
		word_substituter(tweet)
	else
		tweet
	end
end


def shortened_tweet_truncator(tweet)
	shortened_tweet = selective_tweet_shortener(tweet)
	if shortened_tweet.size > 140
		shortened_tweet = shortened_tweet[0..136] + "..."
	else
		shortened_tweet
	end
	shortened_tweet
end