class Waitlist < ActiveRecord::Base
  attr_accessible :parent_id, :residence_id, :start_date
  has_many :parents
  has_many :residences

end