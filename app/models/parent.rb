class Parent < ActiveRecord::Base
  attr_accessible :name, :phone, :children_attributes, :residence_ids
  has_and_belongs_to_many :children
  has_many :housing_parents
  has_many :residences, :through => :housing_parents
  accepts_nested_attributes_for :children, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
