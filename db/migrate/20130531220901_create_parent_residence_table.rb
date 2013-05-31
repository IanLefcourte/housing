class CreateParentResidenceTable < ActiveRecord::Migration
  def up
  	create_table :parents_residences, :id => false do |t|
      t.integer :parent_id
      t.integer :residence_id
    end
  end

  def down
  end
end
