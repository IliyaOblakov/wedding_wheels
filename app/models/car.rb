class Car < ApplicationRecord
  belongs_to :user
  validates :make, presence: true
  validates :model, presence: true
  validates :photo_url, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
