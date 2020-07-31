class Course < ApplicationRecord
  belongs_to :education
  has_many :categories, dependent: :destroy
end
