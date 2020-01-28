class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        name: Faker::Restaurant.name,
        city: Faker::Nation.capital_city,
        country: Faker::Nation.nationality
      )
      puts "Destination #{i}: Name is #{destination.name} and city is '#{destination.city}'."
    end
  end
end

Seed.begin
