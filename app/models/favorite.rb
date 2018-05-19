class Favorite < ApplicationRecord
  belongs_to :favoritable, polymorphic: true
  belongs_to :user
end
