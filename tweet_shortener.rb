# Write your code here.
def dictionary
  {
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(string)
  #string.split(" ").map{|i| if dictionary.keys.include?(i.downcase)}
  string.split(" ").map{|i| dictionary[i.downcase] || i}.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(string)
  if string.size>140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  short_string=selective_tweet_shortener(string)
  if short_string.size>=140
    short_string[0..136]+"..."
  else
    short_string
  end
end
