CREATE INDEX tweet_tags_id_tweets_tag_idx ON tweet_tags(id_tweets, tag);

CREATE INDEX tweet_tags_tag_id_tweets_idx ON tweet_tags(tag, id_tweets);

CREATE INDEX tweets_id_tweets_idx ON tweets(id_tweets);

CREATE INDEX tweets_to_tsvector_idx ON tweets USING gin(to_tsvector('english',text)) WHERE lang='en';

