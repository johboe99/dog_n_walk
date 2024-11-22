class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :breed, presence: true
  validates :age, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :name, presence: true
  # validates :photo, attached: true, content_type: [:jpg, :png]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
