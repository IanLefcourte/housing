class Residence < ActiveRecord::Base
  attr_accessible :name, :waitlist, :waitlist_time, :parent_ids
  has_many :housing_parents
  has_many :parents, :through => :housing_parents
end
