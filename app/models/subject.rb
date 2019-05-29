class Subject < ApplicationRecord
  has_many :consultations
  has_many :exams
end
