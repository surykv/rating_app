class FilmLocationMapping < ApplicationRecord
  belongs_to :film_location
  belongs_to :movie
end