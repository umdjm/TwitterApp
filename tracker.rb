require 'rubygems'
require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key = 'VH3sMDaBmiK9036SxnlChw'
  config.consumer_secret = '7tCaBbig0N6GRuwnb03x1sG2fTksRCzwsQF4LJZ0OU'
  config.oauth_token = '230227822-DjaFQuVMRvezyj6hung3nwbSMcQmSJ5kdriciGI'
  config.oauth_token_secret = 'pBHtoOG5W5861NjEYmBmwAv3iilfEf5BvOkosJzIsY8'
  config.auth_method = :oauth
end

keyword   = 'detroit tigers'
$last_tweet = DateTime.now
last_checked = DateTime.now


client = TweetStream::Client.new

client.on_error do |message|
  puts message
end

Thread.new do
  client.track(keyword) do |status|
    $last_tweet = DateTime.now
    puts "#{status.user.screen_name}]: #{status.text} - #{status.created_at}"
  end
end

loop do
  sleep 10
  if last_checked > $last_tweet 
  	puts "status: active.  Time:" + DateTime.now.to_s
  end
  last_checked = DateTime.now
end