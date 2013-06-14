class CreateParentsWaitlistTable < ActiveRecord::Migration
  def up
  	create_table :parent_waitlists do |t|
      t.integer :parent_id
      t.integer :residence_id
      t.date :start_date
    end
  end

  def down
  end
end
