class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :breed, presence: true
  validates :age, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :name, presence: true
end
