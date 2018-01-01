require 'pry'

def dictionary
  dictionary = {
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

def word_substituter(tweet)
  word_array = tweet.split
  dictionary_array = dictionary.keys
  word_array.map do |w|
    dictionary_array.each do |subst|
      if w == subst
        w = subst
      end
    end
  end
  binding.pry
end
