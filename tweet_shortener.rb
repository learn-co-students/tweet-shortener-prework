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
  array = []
  new_string = string.split(" ")
   new_string.each do |word|
    if dictionary.keys.include?(word.downcase)
      array << dictionary[word.downcase]
    else
      array << word
    end
  end
  array.join(" ")
end
 def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end
 def selective_tweet_shortener(string)
  new_array = []
    new_string = string.split(" ")
    new_string.each do |word|
      if dictionary.keys.include?(word) && string.length > 140
        new_array << dictionary[word]
      else
        new_array << word
      end
    end
    new_array.join(' ')
end
 def shortened_tweet_truncator(string)
  new_array = []
  new_string = string.split(" ")
  new_string.each do |word|
    if dictionary.keys.include?(word) && string.length > 140
      new_array << dictionary[word]
    else
      new_array << word
    end
  end
  final_string = new_array.join(" ")
  if final_string.length > 140
      final_string = final_string[0..139]
    else
      final_string
    end
end 
