class CrewMapping < ApplicationRecord

  belongs_to :crew_member
  belongs_to :movie
end