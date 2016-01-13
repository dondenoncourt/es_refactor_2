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

class Scene < ActiveRecord::Base
  attr_accessible :country, :lat, :lon, :region, :reports, :statement, :submissionDate, :title, :town
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  index_name [Rails.application.engine_name, Rails.env].join('_')

  validates_presence_of :lat, :lon

  has_many  :people
  has_many  :photos
  has_many  :commentaries

  #def location
    #@location ||= Location.new(lat, lon, town, region, country)
  #end

  def location
    geotag = town && region && country ? "#{town}, #{region}, #{country}" : ''
    {lat: lat, lon: lon, town: town, region: region, country: country, geotag: geotag}
  end

  def as_indexed_json(options={})
    self.as_json({methods: :location, include: [:commentaries, :people, :photos]})
  end

end
