class Seed

  Destination.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_seed
  end

  def generate_seed
    20.times do |dest_index|
      destinations = []
      destination = Destination.create!(name: Faker::Color.color_name,
        city: Faker::Nation.capital_city,
        country: Faker::Nation.nationality)
        destinations.push(destination)
        puts "Destination #{dest_index} with #{destination.id}: Name is #{destination.name} and city is #{destination.city}."
        3.times do |rev_index|
          destinations.each do |d|
            review = Review.create!(author: Faker::Name.first_name,
              content_body: Faker::Lorem.paragraph(sentence_count: 4),
              rating: Faker::Number.between(from: 1, to: 10),
              :destination_id => d.id)
              puts "Review #{rev_index}: Author is #{review.author} and rating is #{review.rating}."
            end
          end
        end
      end

    end

    Seed.begin
