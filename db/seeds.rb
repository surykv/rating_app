require 'csv'
# create roles

helper = Helper.new

director_role = helper.create_role('Director')
actor_role = helper.create_role('Actor')

# import movies
CSV.foreach(Rails.root.join('movies.csv'), headers: true) do |movie|

  film_location = helper.find_or_create_film_location(movie['Filming location'], movie['Country'])

  movie_obj = helper.find_or_create_movie(year: movie['Year'], 
                        name: movie['Name'], 
                        description: movie['Description'])

  helper.create_film_location_mapping(movie_obj, film_location)
  helper.create_crew_members(movie_obj, movie['Director'], director_role.id)
  helper.create_crew_members(movie_obj, movie['Actor'], actor_role.id)
end

# import reviews
CSV.foreach(Rails.root.join('reviews.csv'), headers: true) do |review|
  user = helper.find_or_create_user(review['User'])
  movie = helper.find_movie(review['Movie'])

  helper.create_review(user_id: user.id, movie_id: movie.id, stars: review['Stars'], comments: review['Review'])
end

