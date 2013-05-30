class Person # classes always capitalized
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{@name} is a #{age} y.o. #{@gender}"
  end
end


