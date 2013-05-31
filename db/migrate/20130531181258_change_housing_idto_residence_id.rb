class ChangeHousingIdtoResidenceId < ActiveRecord::Migration
  def up
  	remove_column :housing_parents, :housing_id
  	add_column :housing_parents, :residence_id, :integer
  end

  def down
  end
end
