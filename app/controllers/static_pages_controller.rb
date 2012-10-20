require 'open-uri'
require 'json'

class StaticPagesController < ApplicationController
  def home

    Twitter.configure do |config|
      config.consumer_key = "VH3sMDaBmiK9036SxnlChw"
      config.consumer_secret = "7tCaBbig0N6GRuwnb03x1sG2fTksRCzwsQF4LJZ0OU"
      config.oauth_token = "230227822-DjaFQuVMRvezyj6hung3nwbSMcQmSJ5kdriciGI"
      config.oauth_token_secret = "pBHtoOG5W5861NjEYmBmwAv3iilfEf5BvOkosJzIsY8"
    end


    @tweets = Twitter.search("to:justinbieber marry me", :count => 3, :result_type => "recent").results
  end
end
