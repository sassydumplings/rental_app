class Apartment
  attr_accessor :rent, :sqft, :num_bathrooms, :num_bedrooms, :renters, :apt_number

  def initialize(sqft, num_bedrooms, num_bathrooms)
    @rent = 0
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
    @apt_number
  end

  def is_occupied?  # ? indicates method returns true or false
    @renters.any?  # default method in ruby that check for any items in array
  end

  def to_s
    "apt is #{@sqft} sq. ft. and #{@renters.count} renters"
  end
end
