class Tweet < ActiveRecord::Base
  attr_accessible :message, :messageTime, :screenname, :statusId, :userId
end
