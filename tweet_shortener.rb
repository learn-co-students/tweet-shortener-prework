
def dictionary
hash_1={:hello=>"hi",  :too=> "2",:to=>"2", :two=>"2", " be "=> " b ", "you "=>"u ", " at"=> " @", " and"=> " &", " for"=>" 4"," For"=>" 4"}
return hash_1
end
def word_substituter(string)
 hash_1=dictionary
  hash_1.each do |word,short|
   wordstring=word.to_s
   shortstring=short.to_s
   string=string.split("#{wordstring}").join("#{shortstring}")
 end
 return string
end

def bulk_tweet_shortener(list_of_tweets)
  list_of_tweets.each do |x|
   puts word_substituter(x)
  end
end
def selective_tweet_shortener(string)
  if string.size >140
    new_string=word_substituter(string)
    return new_string
  else
    return string
  end
  
end

def shortened_tweet_truncator(string)
  if string.size>140
  stringshort= word_substituter(string)
else
  return string
end
  if stringshort.size >140
    firstpart=stringshort[0...134]
    secondpart=stringshort[134...stringshort.size]
    last_space_position= (firstpart.size-1)-(firstpart.reverse.index(" "))
    part1, part2 = firstpart.slice!(0...(last_space_position+1)), firstpart
    new_tweet_first_part=part1+"(...)"
    new_tweet_second_part=part2+secondpart
    new_tweet_first_part
    new_tweet_second_part
    
  end
end
    
  
  
  