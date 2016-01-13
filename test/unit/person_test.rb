# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  town       :string(255)
#  region     :string(255)
#  country    :string(255)
#  lat        :decimal(64, 12)
#  lon        :decimal(64, 12)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  scene_id   :integer
#

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
