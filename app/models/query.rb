require 'csv'
class Query < ActiveRecord::Base
  attr_accessible :max_id, :page, :q, :rpp
  has_many :tweets, :inverse_of => :query


  def to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << Tweet.column_names

      tweets.each do |tweet|
        csv << tweet.attributes.values_at(*Tweet.column_names)
      end
    end
  end
end
