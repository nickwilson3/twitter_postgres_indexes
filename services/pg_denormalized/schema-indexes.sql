create index tweetsjsonb_idx_hashtags on tweets_jsonb USING gin((data->'entities'->'hashtags'));
create index tweetsjsonb_idx_hashtags2 on tweets_jsonb USING gin((data->'extended_tweet'->'entities'->'hashtags'));
create index tweetsjsonb_idx_gin on tweets_jsonb USING gin(to_tsvector('english',COALESCE(data->'extended_tweet'->>'full_text', data->>'text'))) WHERE (data->>'lang'='en');


