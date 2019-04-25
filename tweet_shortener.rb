# Write your code here.
require 'pry'

def dictionary
  dictionary= {
:hello => 'hi',
:to =>'2',
:two => "2",
:too => "2",
:for => '4',
:four => "4",
:be => 'b',
:you => 'u',
:at => "@",
:and => "&",
}
end


def word_substituter(tweets)
    array = tweets.split(" ")
       array.map do |word|

          final = word.downcase
          final_word = final.to_sym

          if dictionary.has_key?(final_word)
            dictionary[final_word]
          else
            word
          end

       end.join(" ")

end

def bulk_tweet_shortener(tweets)
    tweets.each do |word|
      puts word_substituter(word)
    end

end


def selective_tweet_shortener(tweets)

      if tweets.length > 140
        word_substituter(tweets)
      else
        tweets
      end

  end


def shortened_tweet_truncator(tweets)

  if word_substituter(tweets).length > 140
    "#{tweets[0...137]}..."



  else
    word_substituter(tweets)
end
end
