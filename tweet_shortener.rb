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


def word_substituter(entered_tweet)

final_string = ''
new_array = []


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

  new_array = entered_tweet.split(' ')
  dictionary_array = dictionary.keys
  uppercase_dictionary_array = []

  dictionary_array.each do |lower_case_word|
    uppercase_dictionary_array.push(lower_case_word.capitalize)
  end



  new_array.each do |word|
    if dictionary_array.include? word
      final_string << dictionary[word]
      final_string << " "
    elsif uppercase_dictionary_array.include? word
      final_string << dictionary[word.downcase]
      final_string << " "
    else
      final_string << word
      final_string << " "
    end
  end
  final_string[final_string.length-1] = ''
  return final_string
end


def bulk_tweet_shortener(entered_tweet)
  entered_tweet.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(entered_tweet)
  if entered_tweet.length < 140
    return entered_tweet
  else
    return word_substituter(entered_tweet)
  end
end


def shortened_tweet_truncator(entered_tweet)
  new_string = ''
  if entered_tweet.length < 140
    return entered_tweet
  else
    shortened_tweet = word_substituter(entered_tweet)
  end
  for n in 1..135
    new_string << shortened_tweet[n]
  end
  new_string << "[...]"
  return new_string
end
