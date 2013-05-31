class Residence < ActiveRecord::Base
  attr_accessible :name, :waitlist, :waitlist_time, :parent_ids, :parent_attributes
  has_and_belongs_to_many :parents
end
