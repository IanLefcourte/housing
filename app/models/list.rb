class List < ActiveRecord::Base
  attr_accessible :name, :organization, :user_id
  has_and_belongs_to_many :user
end
