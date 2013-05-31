class AddTimetoResidence < ActiveRecord::Migration
  def up
  		add_column :residences, :waitlist_time, :datetime
  end

  def down
  end
end
