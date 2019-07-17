class Report < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  has_many_attached :images

  validates :title, presence: true
  validates :spend_minute, numericality: { only_integer: true }
end
