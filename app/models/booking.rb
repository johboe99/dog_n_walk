class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  has_many :user
  has_many :dog

  validates :date, presence: true
end
