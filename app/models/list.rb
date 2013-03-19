class List < ActiveRecord::Base
  attr_accessible :name, :organization, :user_id
  belongs_to :user
end
