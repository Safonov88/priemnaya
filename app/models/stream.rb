class Stream < ApplicationRecord
  has_many :groups
  has_many :exams
  has_many :consultations
end
