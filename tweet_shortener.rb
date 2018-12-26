require "pry"


def dict2()
  dict = {"hello"=> 'hi',
  "to"=> "2", "two"=>"2", "too" => "2" ,
  "for"=>"4", "four" => "4",
  "be"=> "b", "you" => "u", "at" => "@", "and"=>"&"}

return dict
end

def word_substituter(text)

  array = text.split(" ")
  dictionary = dict2()


  for i in 0..array.size-1 do
    word = array[i].downcase
    if dictionary.has_key?(word)

        array[i]= dictionary[word]
    end
  end
  return array.join(" ")


end

def bulk_tweet_shortener(text)

  for i in 0..text.size-1 do
    puts word_substituter(text[i])
  end


end


def selective_tweet_shortener(text)
  if text.length > 140
      return word_substituter(text)
  else
    return text
  end
end

def shortened_tweet_truncator(text)
newtext = selective_tweet_shortener(text)
if newtext.length > 140
    return "#{newtext[0..136]}..."
else
  return newtext
end


end
