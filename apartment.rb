class Apartment
  attr_accessor :rent, :sqft, :num_bathrooms, :num_bedrooms, :renters, :unit_no

  def initialize(sqft, num_bedrooms, num_bathrooms, unit_no)
    @rent = 0
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
    @unit_no = unit_no
  end

  def is_occupied?  # ? indicates method returns true or false
    @renters.any?  # default method in ruby that check for any items in array
  end

  def to_s
    "apt #{@unit_no} is #{@sqft} sq. ft. and #{@renters.count} renters"
  end
end
