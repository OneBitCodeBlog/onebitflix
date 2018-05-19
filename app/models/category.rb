class Category < ApplicationRecord
  has_many :series, class_name: "Serie"
  has_many :movies
  validates :name, presence: true, uniqueness: true
end