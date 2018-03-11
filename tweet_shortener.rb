def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end


def word_substituter(string)
  array = string.split(" ")
  array.map do |element|
    dictionary.keys.include?(element.downcase) ? element = dictionary[element.downcase] : element = element
  end.join(" ")

  #array.join(" ")

end

def bulk_tweet_shortener(array)
 array.each do |tweet|
   puts word_substituter(tweet)
 end
end

def selective_tweet_shortener(string)
string.length > 140 ? word_substituter(string) : string
end


def shortened_tweet_truncator(string)
  if word_substituter(string).length > 140
    "#{word_substituter(string)[0..135]} ..."
  else
    string
end
end
