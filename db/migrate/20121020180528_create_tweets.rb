class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :userId
      t.string :statusId
      t.string :message
      t.string :screenname
      t.datetime :messageTime

      t.timestamps
    end
  end
end
