class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end
