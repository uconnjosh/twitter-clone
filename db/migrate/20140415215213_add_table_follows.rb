class AddTableFollows < ActiveRecord::Migration
  def change
  create_table :follows do |t|
      t.integer :user_id
      t.integer :stalk_id

      t.timestamps
   end
  end
end
