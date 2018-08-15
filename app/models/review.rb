class Review < ApplicationRecord
  belongs_to :restaurant
  validates_numericality_of :rating, on: :create
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
