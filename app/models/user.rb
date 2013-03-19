class User < ActiveRecord::Base
  attr_accessible :email, :name, :lists_id
  has_and_belongs_to_many :list
end

