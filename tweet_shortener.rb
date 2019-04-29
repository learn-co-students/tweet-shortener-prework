# Write your code here.
#"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!" -- Use Case number one

#tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
# Write your code here.

def dictionary
	#words: 
	#"hello" becomes 'hi'
    #"to, two, too" become '2' 
    #"for, four" become '4'
    #'be' becomes 'b'
    #'you' becomes 'u'
    #"at" becomes "@" 
    #"and" becomes "&"

   #dictionary= [{"hello": "hi"},{"to": '2', "two": '2', "too" => '2'},{'for': '4', 'four': '4'},{'be' => 'b'},{'you': 'u'},{'at' =>'@'},{'and': '&' }]
   dictionary = {"hello": 'hi', 
   	"to" => '2', 
   	'two' => '2', 
   	'too' => '2', 
   	'for' => '4',
   	'For'  => '4',
   	'four' => '4', 
   	'be' => 'b',
   	'you' => 'u', 
   	'at' => '@', 
   	'and' => '&'}
    return dictionary
end

def word_substituter(string)

	# replaces long words with their expected short form (FAILED - 1)

	# array = tweet.split(" ") => new array
	# iterate through the tweet by word  
	array = string.split(" ")
	new_array = array.collect do |word|
		if dictionary.has_key?(word)
			value = dictionary.fetch(word)
			value #returns value if key exists
		else
			word
		end
	end

	return new_array.join(" ")
	# compare word to -- has_key? method
  	# if word is found in key of the hash
  	# then replace with value of the hash
  	# return tweet?
end

def bulk_tweet_shortener(array_of_tweets)
    #shortens each tweet and prints the results (FAILED - 2)
    array_of_tweets.each do |tweet|
    		new_tweet = word_substituter(tweet)	
    		puts new_tweet
    end
end
  
def selective_tweet_shortener(tweet)
    #shortens tweets that are more than 140 characters (FAILED - 3)
    #does not shorten tweets that are less than 130 characters (FAILED - 4)
    	if tweet.length >= 140
    		new_tweet = word_substituter(tweet)
    		return new_tweet
    	elsif tweet.length < 130
    		return tweet
    	else
    		return tweet
    	end
end

def shortened_tweet_truncator(tweet)
    #truncates tweets over 140 characters after shortening (FAILED - 5)
    #does not shorten tweets shorter than 140 characters. (FAILED - 6)
    shortened_tweet = selective_tweet_shortener(tweet)
    if shortened_tweet.length > 140
    	#shortens
    	return shortened_tweet[0..136] + "..."
    elsif shortened_tweet.length < 140
    	return shortened_tweet
    end
end
