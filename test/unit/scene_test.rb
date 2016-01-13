# == Schema Information
#
# Table name: scenes
#
#  id             :integer          not null, primary key
#  region         :string(255)
#  statement      :string(255)
#  submissionDate :date
#  title          :string(255)
#  reports        :text             default("'--- []\n'")
#  town           :string(255)
#  country        :string(255)
#  lat            :decimal(64, 12)
#  lon            :decimal(64, 12)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class SceneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
