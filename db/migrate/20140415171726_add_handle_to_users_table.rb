class AddHandleToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :handle, :string
  end
end
