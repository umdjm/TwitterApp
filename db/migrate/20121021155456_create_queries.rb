class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :q
      t.integer :rpp
      t.string :max_id
      t.integer :page

      t.timestamps
    end
  end
end
