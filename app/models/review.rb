class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :user
end
