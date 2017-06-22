def dictionary
	{
		"hello" => "hi",
		"Hello" => "hi",
		"to" => "2",
		"To" => "2",
		"two" => "2",
		"Two" => "2",
		"for" => "4",
		"For" => "4",
		"too" => "2",
		"Too" => "2",
		"be" => "b",
		"Be" => "b",
		"you" => "u",
		"You" => "u",
		"at" => "@",
		"At" => "@",
		"and" => "&",
		"And" => "&"
	}
end

def word_substituter string
	to_loop = string.split(" ")
	new_arr = [] #should find other way to do this lmao
	keys = dictionary.keys
	to_loop.each do |word|
		if keys.include?(word) # if word is in keys array
			new_arr << dictionary[word] # push new word to array
		else
			new_arr << word
		end
	end	
	new_arr.join(" ")
end

def bulk_tweet_shortener array
	array.each do |tweet|
		puts "#{word_substituter(tweet)}"
	end
end

def selective_tweet_shortener string
	if string.length > 140 
		word_substituter(string)
	else
		string
	end
end

def shortened_tweet_truncator tweet 
	if tweet.length > 140
		tweet = tweet[0..136] + "..."
	end
	tweet
end