class Parent < ActiveRecord::Base
  attr_accessible :name, :phone, :children_attributes
  has_and_belongs_to_many :children
  has_and_belongs_to_many :residences
  accepts_nested_attributes_for :children, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

  attr_accessible :residence_ids, :residence_attributes
end
