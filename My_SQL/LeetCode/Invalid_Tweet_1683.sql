-- tweet_id is the primary key (column with unique values) for this table.
-- content consists of alphanumeric characters, '!', or ' ' and no other special characters.
-- This table contains all the tweets in a social media app.
 

-- Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) >15;