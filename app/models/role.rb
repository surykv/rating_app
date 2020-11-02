class Role < ApplicationRecord

  has_many :role_mappings
  has_many :crew_members, through: :role_mappings

  validates :name, uniqueness: true
end