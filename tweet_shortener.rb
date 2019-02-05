

def dictionary

list_words_substituted = {:hello => "hi", :to => "2", :two => "2", 
						  :too => "2", :for =>"4", :four => "4", 
						  :be =>"b", :you => "u", :at => "@", :and => "&"}




end





def word_substituter(string)
short_sentence = string.split(" ")
short_words =[]
short_sentence.each do |word|
 case word.downcase
 when "hello"
 	short_words << "hi"
 when "to", "too","two"
 	short_words << "2"
when "for", "four" 
      short_words << "4"
    when "be" 
      short_words << "b"
    when "you" 
      short_words << "u"
    when "at" 
      short_words << "@" 
    when "and" 
      short_words << "&"
    else
      short_words << word
    end
  end
  short_words.join(" ")
end

def bulk_tweet_shortener(string)

string.each do |tweet|
	tweet = word_substituter(tweet)
puts "#{tweet}"
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

	if selective_tweet_shortener(string).length > 140
		string[0..139]

	else
		string


	end
	end







# Write your code here.