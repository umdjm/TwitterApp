class Query < ActiveRecord::Base
  attr_accessible :max_id, :page, :q, :rpp
  has_many :tweets, :inverse_of => :query
end
