# Write your code here.
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
    new.push((dictionary.key(x).to_s))
    else
    new.push(x)
    end
    index+=1
  end
  puts new.join(" ")
end