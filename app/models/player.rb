class Player < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  before_create :set_start_date

  private

    def set_start_date
      self.start_date ||= Time.zone.now
    end
end