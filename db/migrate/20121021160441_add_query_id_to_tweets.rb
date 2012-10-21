class AddQueryIdToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :query_id, :integer
  end
end
