# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988', :description => 'My Neighbor Totoro is a 1988 Japanese animated fantasy film written and directed by Hayao Miyazaki and animated by Studio Ghibli for Tokuma Shoten.'},
  {:title => 'Green Book', :rating => 'PG-13', 
    :release_date => '16-Nov-2018', :description => 'Green Book is a 2018 American biographical comedy-drama film directed by Peter Farrelly.'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019', :description => 'Parasite (Korean: 기생충; RR: Gisaengchung) is a 2019 South Korean dark comedy[8] thriller film directed by Bong Joon-ho, who co-wrote the film with Han Jin-won.'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021', :description => 'A woman in her sixties, after losing everything in the Great Recession, embarks on a journey through the American West, living as a van-dwelling modern-day nomad.'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021', :description => 'CODA is a 2021 coming-of-age comedy-drama film written and directed by Sian Heder.'}
]

more_movies.each do |movie|
  Movie.where(movie).first_or_create
end