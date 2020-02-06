def word_substituter(tweet)

    tweetArray = tweet.split(' ')

    newTweet = ''

    tweetArray.map do |word|

        case (word.downcase)

            when 'hello'

                word = 'hi'
                newTweet << "#{word} "
                next


            when 'to', 'too'

                word = '2'
                newTweet << "#{word} "
                next


            when 'for'

                word = '4'
                newTweet << "#{word} "
                next


            when 'you'

                word = 'u'
                newTweet << "#{word} "
                next


            when  'be'

                word = 'b'
                newTweet << "#{word} "
                next


            when  'at'

                word = '@'
                newTweet << "#{word} "
                next

            when  'and'

                word = '&'
                newTweet << "#{word} "
                next

            else
                newTweet << "#{word} "

        end


    end


    return newTweet.chop()

end

#

def bulk_tweet_shortener(tweet)

    tweet.each {|tweet| puts word_substituter(tweet)}

end

def selective_tweet_shortener(tweet)

    if tweet.length > 140

        return word_substituter(tweet)

    elsif tweet.length < 140

        return tweet

    end
end

def shortened_tweet_truncator(tweet)

    if tweet.length > 140

        return tweet[0,140]

    else

        return tweet

    end


end
