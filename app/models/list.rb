# == Schema Information
#
# Table name: lists
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  organization :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class List < ActiveRecord::Base
  attr_accessible :name, :organization, :user_id
  has_and_belongs_to_many :user
end
