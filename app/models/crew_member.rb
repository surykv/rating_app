class CrewMember < ApplicationRecord

  has_many :crew_mappings
  has_many :movies, through: :crew_mappings

  has_many :role_mappings
  has_many :roles, through: :role_mappings

  scope :actors, -> { joins(:roles).where(roles: {name: 'Actor'}) }
  scope :directors, -> { joins(:roles).where(roles: {name: 'Director'}) }

  validates :name, presence: true, uniqueness: true
end