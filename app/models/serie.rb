class Serie < ApplicationRecord
  include Highlightable
  include PgSearch
  multisearchable against: [:title]
  belongs_to :category
  has_many :reviews, as: :reviewable
  has_many :episodes, ->{ order(:episode_number) }, class_name: "Movie", dependent: :destroy
  belongs_to :last_watched_episode, class_name: "Movie", optional: true
  validates :title, presence: true
  validates :description, presence: true
  validates :thumbnail_key, presence: true
end