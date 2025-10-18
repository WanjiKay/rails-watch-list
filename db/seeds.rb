# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.create(title: "Wonder Woman 1984", description: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", description: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", rating: 8.7)
Movie.create(title: "Titanic", description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", rating: 7.9)
Movie.create(title: "Ocean's Eight", description: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", rating: 7.0)
