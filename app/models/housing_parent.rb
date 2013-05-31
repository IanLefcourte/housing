class HousingParent < ActiveRecord::Base
  attr_accessible :residence_id, :parent_id, :start_date
  belongs_to :parents
  belongs_to :residences
end
