def dictionary()
  substitutions = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  substitutions = dictionary
  index = 0
  string_as_array = string.split(/ /)
  string_as_array.each {|string_in_string_as_array|
    string_as_array[index] = substitutions[string_in_string_as_array.downcase] if substitutions.keys.include? string_in_string_as_array.downcase
    index += 1
  }
  string_as_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|string_in_array|
    puts word_substituter(string_in_array)
  }
end

def selective_tweet_shortener(string)
  if string.length > 140
    substitutions = dictionary
    index = 0
    string_as_array = string.split(/ /)
    string_as_array.each {|string_in_string_as_array|
      string_as_array[index] = substitutions[string_in_string_as_array.downcase] if substitutions.keys.include? string_in_string_as_array.downcase
      index += 1
    }
    string_as_array.join(" ")
  else
    string
  end
end

def shortened_tweet_truncator(string)
  shortened_string = selective_tweet_shortener(string)
  if shortened_string.length > 140
    shortened_string[0,137] + "..."
  else
    shortened_string
  end
end
