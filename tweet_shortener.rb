# Write your code here.
def word_substituter(str)
  substituter = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "you" => "u",
    "be" => "b",
    "at" => "@",
    "and" => "&"
  }
  substituter.keys.each{|k|
    substituter[k.capitalize] = substituter[k]
  }
  str_list = str.split(" ")
  res = []
  str_list.each{|word|
    if substituter[word] != nil
      res << substituter[word]
    else
      res << word
    end
  }
  res.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each {|str|
    puts word_substituter(str)
  }
end

def selective_tweet_shortener(str)
  if str.size <= 140
    return str
  else
    return word_substituter(str)
  end
end

def shortened_tweet_truncator(str)
  str = str[0...140]
  return selective_tweet_shortener(str)
end
  