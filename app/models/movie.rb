class Movie < ApplicationRecord
  belongs_to :serie
  belongs_to :category
end
