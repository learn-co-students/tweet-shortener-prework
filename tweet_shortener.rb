def dictionary
  words = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter(string)
  hash = dictionary
  stringarr = string.split(" ")
  stringarr.each_with_index do |word, index|
    hash.each do |keys, values|
      if word.downcase == keys.to_s
       stringarr[index] = values
      end
    end
  end
  return stringarr.join(" ")
end

def bulk_tweet_shortener(array)
    array.each do |tweets|
      puts word_substituter(tweets)
    end
end

def selective_tweet_shortener(string)
  if string.length <= 140
    return string
  else
    return word_substituter(string)
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    return string[0...140]
  else
    return string
  end
end
