class RoleMapping < ApplicationRecord

  belongs_to :crew_member
  belongs_to :role
end