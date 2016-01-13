# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  town       :string(255)
#  region     :string(255)
#  country    :string(255)
#  lat        :decimal(64, 12)
#  lon        :decimal(64, 12)
#  date       :date
#  urls       :text             default("'--- []\n'")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  scene_id   :integer
#

require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
