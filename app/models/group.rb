class Group < ApplicationRecord
  belongs_to :department
  belongs_to :stream
end
