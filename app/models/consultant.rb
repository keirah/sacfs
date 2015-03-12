class Consultant < ActiveRecord::Base
  #extend ::Geocoder::Model::ActiveRecord
  validates_presence_of :address, :suburb, :state
  geocoded_by :full_address
  before_save :geocode
  
  
  
  reverse_geocoded_by :latitude, :longitude
  
  #geocoded_by :full_address

  # acts_as_mappable :default_units => :kms

  def full_address
    "#{address}, #{suburb}, #{state}, Australia"
  end



end
