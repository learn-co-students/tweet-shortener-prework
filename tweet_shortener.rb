# Write your code here.
require "pry"

s = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def dictionary
  dic = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }

end

def word_substituter(string)
  i, j = string.split(" "), 0
  i.each do |word|
    if dictionary.has_key?(word)
      i[j] = dictionary[word]
    end
    j+=1
  end
  i.join(" ")
end

def bulk_tweet_shortener(array)
  i,j = "", 0
  array.each do |sentence|
    i = sentence.split(" ")
    i.each do |word|
      if dictionary.has_key?(word.downcase)
        i[j] = dictionary[word.downcase]
      end#if
      j+=1
    end#i
    puts i.join(" ")
    j = 0
  end#array
end

def selective_tweet_shortener(string)
  i, j = string.split(" "), 0
  if  string.split("").size > 140
    i.each do |word|
      if dictionary.has_key?(word)
        i[j] = dictionary[word]
      end
      j+=1
    end
    i.join(" ")
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  i, j, k = string.split(" "), 0, ""
  if string.split("").size > 140
    i.each do |word|
      if dictionary.has_key?(word)
        i[j] = dictionary[word]
      end#if
      j+=1
    end#i
    i = i.join(" ")
    if i.split("").size > 140
      return "#{i[0..136]}..."
    end#if
    return i
  else
    return string
  end#IF
end#dEf
