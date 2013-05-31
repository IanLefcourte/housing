class ChildsParents < ActiveRecord::Migration
  def up
  	remove_table :childs_parents
    end
  end

  def down
  end
end
