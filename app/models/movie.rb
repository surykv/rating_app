class Movie < ApplicationRecord

  extend OrderAsSpecified
  
  has_many :crew_mappings
  has_many :crew_members, through: :crew_mappings

  has_many :reviews

  has_many :film_location_mappings
  has_many :film_locations, through: :film_location_mappings

  validates :name, presence: true, uniqueness: true
end