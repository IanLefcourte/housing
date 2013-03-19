# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lists_id   :integer
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :lists_id
  has_and_belongs_to_many :list
end

