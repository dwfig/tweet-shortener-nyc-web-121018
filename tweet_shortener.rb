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


def word_substituter
## replaces long words with their expected short form
end

def bulk_tweet_shortener
## shortens each tweet and prints the results
end

def selective_tweet_shortener
## shortens tweets that are more than 140 characters
## does not shorten tweets that are less than 130 characters
end

def shortened_tweet_truncator
## truncates tweets over 140 characters after shortening
##  does not shorten tweets shorter than 140 characters.
end
