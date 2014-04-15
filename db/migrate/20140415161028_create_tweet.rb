class CreateTweet < ActiveRecord::Migration
def change
    create_table :tweets do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
