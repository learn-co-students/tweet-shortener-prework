# Write your code here.
def dictionary
  dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" =>'4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&"
}
end

def word_substituter (str)
  words = str.split (' ')
  subs = dictionary.keys
  ans = ''
  words.each do |words|
    low = words.downcase
    if subs.index(low)
      ans+= "#{dictionary[low]} "
    else
      ans += words + ' '
    end
  end
  final = ans.chop
end

def bulk_tweet_shortener (arr)
  for i in 0..arr.length-1 do
    puts word_substituter(arr[i])
  end
end

def selective_tweet_shortener (str)
    chars = str.split('')
    len = chars.length
    puts len
    if len > 140
    word_substituter(str)
    else
    str
  end
end

def shortened_tweet_truncator (str)
  shorter = word_substituter(str)
  if shorter.length > 140
  return shorter[0..136] << "..."
  end
  shorter
end
