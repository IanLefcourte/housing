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

require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
