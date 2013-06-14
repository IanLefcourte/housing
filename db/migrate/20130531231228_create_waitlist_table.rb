class CreateWaitlistTable < ActiveRecord::Migration
  def up
  	create_table :waitlists do |t|
  		t.integer :parent_id
  		t.integer :residence_id
  		t.datetime :start_date
  	end
  end

  def down
  end
end
