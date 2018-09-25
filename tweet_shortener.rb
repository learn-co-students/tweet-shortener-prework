
  # let(:tweet_one)   {"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"}
  # let(:tweet_two)   {"OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"} 
  # let(:tweet_three) {"GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"}
  # let(:tweet_four)  {"New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"} 
  # let(:tweet_five)  {"I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."}

  # let(:tweet_one_short)   {"Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!"}
  # let(:tweet_two_short)   {"OMG u guys, u won't believe how sweet my kitten is. My kitten is like super cuddly & 2 cute 2 b believed right?"} 
  # let(:tweet_three_short) {"GUISEEEEE this is so fun! I'm tweeting 4 u guys & this tweet is SOOOO long it's gonna b way more than u would think twitter can handle, so shorten it up u know what I mean? I just can never tell how long 2 keep typing!"}
  # let(:tweet_four_short)  {"New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy & mammogram soon. Prevention is key! #swag"}
  # let(:tweet_five_short)  {"I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real."}

  # let(:tweets) {[tweet_one, tweet_two, tweet_three, tweet_four, tweet_five]}
  
  def word_substituter(tweet)
    replace_hash = { 'you' => 'u', 'For' => '4',  'for' => '4', 'and' => '&', 'be' => 'b', 'to' => '2', 'at' => '@', 'too' => '2'  }
    new_tweet = []
    (tweet.split(' ')).each do |word|
      if replace_hash.has_key?(word)
        new_tweet << replace_hash[word]
      else 
        new_tweet << word
      end 
    end 
    new_tweet.join(' ')
  end 

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
    if tweet.length > 140
      return shortened_tweet_truncator(tweet)
    end 
  end 
  tweet
end 
  
  def shortened_tweet_truncator(tweet)
    if tweet.length > 140
      arr = tweet.split('')
      new_tweet = (arr[0...140]).join('')
      return new_tweet
    end 
    tweet
  end 

