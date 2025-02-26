class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5, message: "doit être compris entre 0 et 5!" }
end
