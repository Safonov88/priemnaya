class Entrant < ApplicationRecord
  belongs_to :department, optional: true
  has_many :exam_lists
end
