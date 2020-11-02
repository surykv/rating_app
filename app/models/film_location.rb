class FilmLocation < ApplicationRecord

  has_many :film_location_mappings
  has_many :movies, through: :film_location_mappings
  
  validates :location_name, uniqueness: { scope: :country }
end