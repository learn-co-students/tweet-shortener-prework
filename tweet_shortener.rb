def dictionary 
	{
	"hello" => "hi", 
	"two" => "2",
	"too" => "2", 
	"to" => "2", 
	"four" => "4",
	"for" => "4", 
	"be" => "b", 
	"you" => "u", 
	"at" => "@", 
	"and" => "&"
	}
end 

def word_substituter(tweet)
	tweet.split.map do |word| 
		dictionary.key?(word.downcase) ? word = dictionary[word.downcase] : word 
	end.join(" ") 
end 

def bulk_tweet_shortener(tweets) 
	tweets.map do |tweet| 
		puts word_substituter(tweet) 
	end 
end 

def selective_tweet_shortener(tweet) 
	tweet.length > 140 ? word_substituter(tweet) : tweet 
end 

def shortened_tweet_truncator(tweet)
	tweet = selective_tweet_shortener(tweet) 
	tweet[137..500] = "..." if tweet.length > 140 
	tweet 
end 