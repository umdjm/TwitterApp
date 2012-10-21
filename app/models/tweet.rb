class Tweet < ActiveRecord::Base
  attr_accessible :message, :messageTime, :screenname, :statusId, :userId
  belongs_to :query, :inverse_of => :tweets
end
