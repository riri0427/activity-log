class Report < ApplicationRecord
  belongs_to :user

  has_many_attached :images

  validates :title, presence: true
  validates :spend_hour, numericality: { only_integer: true }
  validates :spend_minute, numericality: { only_integer: true }
end
