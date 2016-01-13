class Location
  include ActiveModel::Validations
  attr_reader :lat, :lon, :town, :region, :country

  def initialize(lat, lon, town, region, country)
    @lat, @lon, @town, @region, @country = lat, lon, town, region, country
  end

  def ==(other_location)
    lat == other_location.lat &&
    lon == other_location.lon &&
    town == other_location.town &&
    region == other_location.region &&
    country == other_location.country
  end

end
