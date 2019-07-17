class Activity < ApplicationRecord
  has_many :reports
  belongs_to :user
end
