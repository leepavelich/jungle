class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :user, presence: true
  validates :product, presence: true
  validates :description, presence: true
  validates :rating, presence: true, numericality: { in: 1..5 }
end
