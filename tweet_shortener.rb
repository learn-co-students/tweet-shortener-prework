def dictionary
  hash={"hello"=>"hi","to"=>"2","two"=>"2","too"=>"2","for"=>"4","four"=>"4","be"=>"b","you"=>"u","at"=>"@","and"=>"&"}
end

def word_substituter(string)
  newArr=[]
  arr=string.split(" ")
  arr.each do |each|
  if dictionary.keys.include?(each.downcase)
      newArr<<dictionary[each.downcase]
  else
      newArr<<each
    end
end
return newArr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |each|
  puts word_substituter(each)
end
end

def selective_tweet_shortener(str)
  str.length<140?str:word_substituter(str)
end

def shortened_tweet_truncator(str)
  newStr=word_substituter(str)
  if newStr.length>140
    newStr=newStr[0..136]+"..."
  end
  return newStr
end