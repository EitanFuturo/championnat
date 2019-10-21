class Championship < ApplicationRecord
  belongs_to :championship_type

  validates :start_date, :championship_type, presence: true
end
