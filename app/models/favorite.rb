class Favorite < ApplicationRecord
  belongs_to :favoritable, polymorphic: true
  belongs_to :user
  validates :user_id, uniqueness: { scope: [:favoritable_type, :favoritable_id], message: "can favorite only one time per resource" }
end