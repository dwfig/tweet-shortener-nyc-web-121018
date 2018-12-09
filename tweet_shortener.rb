# Write your code here.
def dictionary
  dictionary = {
## "hello" becomes 'hi'
"hello" => "hi",
## "to, two, too" become '2'
"to" => "2",
"two" => "2",
"too" => "2",
## "for, four" become '4'
"for" => "4",
"For" => "4",
"four" => "4",
## 'be' becomes 'b'
"be" => "b",
## 'you' becomes 'u'
"you" => "u",
## "at" becomes "@"
"at" => "@",
## "and" becomes "&"
"and" => "&"
}
end


def word_substituter(tweet)
## replaces long words with their expected short form
## convert string to array split(" ")
## if keys, = values (iterative)
## join(" ")
tweet_words = tweet.split(" ")
dict_long = dictionary.keys
tweet_words.map do |t|
  dict_long.each do |d|
    if t == d
       t.replace(dictionary[d])
    else
        t
      end
  end
end
tweet_words.join(" ")
end

def bulk_tweet_shortener(tweet_array)
## shortens each tweet and prints the results
tweet_array.each do |tweet|
  puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweet)
## shortens tweets that are more than 140 characters
## does not shorten tweets that are less than 130 characters
if tweet.length > 140
  word_substituter(tweet)
else
  tweet
end
end

def shortened_tweet_truncator(tweet)
## truncates tweets over 140 characters after shortening
##  does not shorten tweets shorter than 140 characters.
short_tweet = word_substituter(tweet)
if tweet.length > 140
  if short_tweet.length > 140
    short_tweet[0..139]
  else
    short_tweet
  end
else
  tweet
end
end
