class Report < ApplicationRecord
  has_many   :likes
  belongs_to :user
end
