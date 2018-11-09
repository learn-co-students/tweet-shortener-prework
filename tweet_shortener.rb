def dictionary(x)
tweets = {
'hello'=> 'hi',
'to' => '2',
'two' => '2',
'too' => '2',
'for' => '4',
'For' => '4',
'four' => '4',
'be' => 'b',
'you' => 'u',
'at' => '@',
'and' => '&'
}

tweets.each do |old,new|
  if x == old
    x = new
  end
end 
x
end


def word_substituter(string1)
array1 = string1.split(" ")
array2 = []

array1.each do |word|
  array2 << dictionary(word)
    
end

array2.join(" ")
end

def bulk_tweet_shortener(array1)
  array1.each do |string1|
    puts word_substituter(string1)
  end
end

def selective_tweet_shortener(string1)
  if string1.length > 140
    word_substituter(string1)
  else
    string1
  end
end

def shortened_tweet_truncator (string1)
  x = word_substituter(string1)
  if x.length > 140
    "#{x[0..135]}...}"
  else
    x
  end
end



