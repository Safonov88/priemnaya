class Exam < ApplicationRecord
  belongs_to :subject
  belongs_to :stream
  has_many :exam_lists
end
