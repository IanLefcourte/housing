class CreateHousingParents < ActiveRecord::Migration
  def change
    create_table :housing_parents do |t|
      t.integer :housing_id
      t.integer :parent_id
      t.datetime :start_date

      t.timestamps
    end
  end
end
