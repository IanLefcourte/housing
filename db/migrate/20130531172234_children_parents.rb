class ChildrenParents < ActiveRecord::Migration
  def up
  	create_table :children_parents, :id => false do |t|
      t.integer :child_id
      t.integer :parent_id
    end
  end

  def down
  end
end
