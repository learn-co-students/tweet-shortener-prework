def dictionary()
    dictionary = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "become" => "2",
    "for" =>"4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end

def word_substituter(tweet)
    #turn string into an array that can be iterated upon
    array_tweet = tweet.split
    #iterate over each element in array and its index (so we can replace in same position)
    array_tweet.each_with_index do |string, index|
        #iterate over each key in the dictionary hash
        dictionary.each_key do |word|
            #compare each word in tweet to key in dictionary
         if string==(word) || string == (word).capitalize
             #if the word in tweet and word in dictionary are the same, at that index, replace that tweet word with value in dictionary key
          array_tweet[index].gsub!(string, dictionary[word])
         end
         end
    end
    #turn array back to string
    array_tweet.join(" ")
end


#1. takes in string as an arg
#2. turn string into an array of strings
#2.5 iterate over every word in tweet
#3. compare array to dictionary.keys
#4. if there are matches, replace word in tweet with associated value in key in the array
#5. turn array back intro string

def bulk_tweet_shortener(array_tweet)
    array_tweet.each do |tweet|
       puts word_substituter(tweet)
       end
end


def selective_tweet_shortener(tweet)
    if tweet.length >= 140
        word_substituter(tweet)
        else
        tweet
        end
end

def shortened_tweet_truncator(tweet)
    if tweet.length <=140
        tweet
        else
            new_tweet = word_substituter(tweet)
            if new_tweet.length > 140
                new_tweet[137] == "..."
                new_tweet[0...140]
                end
            end
end
