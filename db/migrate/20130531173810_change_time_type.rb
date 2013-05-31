class ChangeTimeType < ActiveRecord::Migration
  def up
  	remove_column :residences, :waitlist_time
  	add_column :residences, :waitlist_time, :string
  end

  def down
  end
end
