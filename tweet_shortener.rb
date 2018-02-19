def dictionary
substitute =
{
"hello" => "hi",
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
"be" => "b",
"you"=> "u",
"at"=> "@",
"and"=> "&"
}
end

def word_substituter(string)
array = string.split
dictionary.each{|word,substitute|
idx = 0
while idx < array.length
  if array[idx].downcase == word
  array[idx] = substitute
  end
  idx += 1
end


}
array.join(" ")
end

def bulk_tweet_shortener(array)
array.each{|tweet|
puts word_substituter(tweet)
}

end

def selective_tweet_shortener(string)
if string.length > 140
  array = string.split
  dictionary.each{|word,substitute|
  idx = 0
  while idx < array.length
    if array[idx].downcase == word
    array[idx] = substitute
    end
    idx += 1
  end


  }
  array.join(" ")
else
string
end


end

def shortened_tweet_truncator(string)
  if string.length > 140
    array = string.split
    dictionary.each{|word,substitute|
    idx = 0
    while idx < array.length
      if array[idx].downcase == word
      array[idx] = substitute
      end
      idx += 1
    end


    }
string =  array.join(" ")
  else
  return string
  end

if string.length > 140
string = string[0..136] + "..."
end
end
