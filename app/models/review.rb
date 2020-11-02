class Review < ApplicationRecord

  belongs_to :user
  belongs_to :movie

  validates :stars, :comments, presence: true
end