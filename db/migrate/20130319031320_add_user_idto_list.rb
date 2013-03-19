class AddUserIdtoList < ActiveRecord::Migration
  def up
  	create_table :lists do |t|
      t.string :name
      t.string :organization
      t.integer :user_id

      t.timestamps
  end

  def down
  end
end
