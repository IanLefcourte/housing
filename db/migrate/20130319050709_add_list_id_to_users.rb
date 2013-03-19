class AddListIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lists_id, :integer
  end
end
