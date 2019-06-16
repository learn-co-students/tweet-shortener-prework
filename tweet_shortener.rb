# Write your code here.
def dictionary
  {
    hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    four: '4',
    be: 'b',
    you: 'u',
    at: '@',
    and: '&'
  }
end

def word_substituter(string) # Takes in string as input
  # Create variable to store output array
  finish = []
  # Create a counter variable
  counter = 0
  # Split string into an array
  start = string.split
  # Compare words to dictionary
  while counter < start.length
    # If word in dictionary, replace with abbr.
    finish.push(dictionary.has_key?(
      start[counter].downcase.to_sym) ?
        # *Edge case - word is Capitalized*
        dictionary[start[counter].downcase.to_sym] :
                                        # Else push word
                                        start[counter])
    counter += 1
  end
  # Returns shorter string as output
  finish.join(' ')
end

def bulk_tweet_shortener(array)
  counter = 0
  while counter < array.length
    puts word_substituter(array[counter])
    counter += 1
  end
end

def selective_tweet_shortener(string)
  string.length > 140 ? word_substituter(string) : string
end

def shortened_tweet_truncator(string)
  string.length > 140 ? string[0..136] + '...' : string
end
