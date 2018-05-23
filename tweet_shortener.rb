def dictionary
  replacements = {
    :hello => "hi",
    :too => "2",
    :two => "2",
    :to => "2",
    :four => "4",
    :for => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"}
end

def word_substituter(tweet)
  newarr = []
  tweet.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      newarr.push << dictionary[word.downcase]
    else
      newarr << word
    end
  end
  newarr.join(" ")
end
