def tweet_shortener(string)
  words = string.split(" ")
  dictionary = {
    :hi => "hello",
    :"2" => ["to", "two", "too"],
    :"4" => ["for", "four"],
    :b => "be",
    :u => "you",
    :"@" => "at",
  }
  new = []
  index = 0
  while index < words.length
    x = words[index]
    if dictionary.values.flatten.include?(x) 
    use= ""
    dictionary.each{|key,value| use = key if value.include?(x)}
    new.push(use)
    else
    new.push(x)
    end
    index+=1
  end
  new.join(" ")
end