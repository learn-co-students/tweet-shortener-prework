# Write your code here.
def lookup(word)
  dict = {
    "hello" => "hi",
    "to"  => "2",
    "two"  => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dict[word.downcase]
end

def word_substituter(string)
  newString = Array.new
  string.split(" ").each {|item|
    replacement = lookup(item)
    replacement != nil ? newString.push(replacement) : newString.push(item)
  }
  newString = newString.join(" ")
end

def bulk_tweet_shortener(arrayOfStrings)
  arrayOfStrings.each {|string|
    puts word_substituter(string)
  }
end

def selective_tweet_shortener(string)
    string.length > 140 ? word_substituter(string) : string
end

def shortened_tweet_truncator(string)
  word_substituter(string).length > 140 ? string[0..139] : word_substituter(string)
end
