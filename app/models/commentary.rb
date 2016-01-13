# == Schema Information
#
# Table name: commentaries
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  town       :string(255)
#  region     :string(255)
#  country    :string(255)
#  lat        :decimal(64, 12)
#  lon        :decimal(64, 12)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  scene_id   :integer
#

class Commentary < ActiveRecord::Base
  attr_accessible :content, :country, :lat, :lon, :region, :town
  belongs_to :scene, touch: true 

  def location
    @location ||= Location.new(lat, lon, town, region, country)
  end
end
