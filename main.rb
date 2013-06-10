# buildings we can manage
# apartments in the buildings
# people in the apartments

# Buildings
# address
# floors
# num of units
#
#
# apartment number of rooms
# different apt models
#
# persons live in an apartment
#
require "pry"

require_relative "building"
require_relative "apartment"
require_relative "person"

building = nil # need a sample building shell to work off of

print "add (b)uilding or (a)partment or (p)erson or (q)uit: "
response = gets.chomp.downcase # chomps get rid of enter key

while response != "q"

  if response == "b"
    b1 = Building.new("123 King St", "modern", false, false, 10)
    puts "Building created"
    puts b1.to_s


  elsif response == "a"
    print "Unit no.: "
    unit_no = gets.chomp

    print "Sq. ft:  "
    sqft = gets.to_i

    begin
      b1.apartments[unit_no] = Apartment.new(unit_no, sqft, 1, 1)
    rescue
      puts "You need a building first"
    end

  else response == "p"

    # stones.each { |k, v| puts "Key: #{k}, Value: #{v}" }
    b1.apartments.each do |x, y|
      puts "apt: #{unit_no}  square footage: #{sqft}"
    end

    print "Name: "
    name = gets.chomp

    print "Age: "
    age = gets.to_i

    print "Gender: "
    gender = gets.chomp

    begin
    print "Which apartment will you live in?"
    apt = gets.chomp
    b1.apartments[apt].renters << Person.new(name, age, gender)
    rescue
      puts "That apt doesn't exist.. would you like to try again?"
      retry
    end

  end

  # need to get new response to prevent while loop running forever
  print "add (b)uilding or (a)partment or (p)erson or (q)uit: "
  response = gets.chomp.downcase # chomps get rid of enter key

end
