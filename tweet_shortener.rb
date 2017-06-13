# Write your code here.
require 'pry'

def dictionary

	hsh = {"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&" }
	
end


def word_substituter(tweet_one)
	arr_tweet = tweet_one.split(" ")
	# binding.pry
	arr_tweet.map do |word|
		# if word found in dictionay key (if word replaceable)
		if dictionary.keys.include?(word.downcase)
			dictionary[word.downcase]
			else word
		end

	end.join(" ")

end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
		puts word_substituter(tweet)
	end
	
end

def selective_tweet_shortener(tweet_two)
	if tweet_two.length > 140
		shortened_tweet_truncator(tweet_two)
	else return tweet_two
	end
end

def shortened_tweet_truncator(tweet_one_short_length)
	"#{tweet_one_short_length[0..139]}"
	
end