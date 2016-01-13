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

class Photo < ActiveRecord::Base
  attr_accessible :country, :date, :lat, :lon, :region, :town, :urls
  belongs_to :scene, touch: true 
end
