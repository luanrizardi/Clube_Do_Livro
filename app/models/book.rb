class Book < ApplicationRecord
  belongs_to :club
  has_many :authorships, dependent: :destroy
  has_many :authors, through: :authorships

  validates :title, presence: true
end
