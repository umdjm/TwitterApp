require 'rubygems'
require 'tweetstream'

task :tweets => :environment do
  desc "Run Twitter Daemon"


  TweetStream.configure do |config|
    config.consumer_key = 'VH3sMDaBmiK9036SxnlChw'
    config.consumer_secret = '7tCaBbig0N6GRuwnb03x1sG2fTksRCzwsQF4LJZ0OU'
    config.oauth_token = '230227822-DjaFQuVMRvezyj6hung3nwbSMcQmSJ5kdriciGI'
    config.oauth_token_secret = 'pBHtoOG5W5861NjEYmBmwAv3iilfEf5BvOkosJzIsY8'
    config.auth_method = :oauth
  end

  keywords = "go blue"
  client = TweetStream::Client.new
  client.track(keywords) do |status|
    begin
      @tweet = Tweet.new( :message => status.text, :userId  => status.user.id, :screenname => status.user.screen_name, :message => status.text, :statusId => status.id, :messageTime => status.created_at)
      if @tweet.save
        puts @tweet.message
      else
        puts @tweet.errors[:name]
      end
    rescue => e
      puts e.message
    end
    if keywords == "go blue"
      puts "now green"
      keywords = "go green"
    else
      puts "now blue"
      keywords = "go blue"
    end
    client.track(keywords)
  end

end

