class Dog < ApplicationRecord
  belongs_to :user
  validates :breed, presence: true
  validates :age, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :name, presence: true
end
