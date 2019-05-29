class Consultation < ApplicationRecord
  belongs_to :stream
  belongs_to :subject
end
