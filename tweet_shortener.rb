def word_substituter(input)
  dict={"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"}
  input.split(" ").map{|w| short_forms(w)}.join(" ")
end

def short_forms(input)
  dict={"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"}
  return dict[input] if dict.keys.include?(input)
  return dict[input.downcase] if dict.keys.include?(input.downcase)
  input
end

def bulk_tweet_shortener(array)
  array.each do |el|
    el=word_substituter(el)
    puts el
  end
end

def selective_tweet_shortener(array)
  el=array
  el=word_substituter(el) if el.size>140
  el
end

def shortened_tweet_truncator(array)
  el=array
    el=word_substituter(el) if el.size>140
    el=el[0..136]+"..." if el.size>140
    el
end

