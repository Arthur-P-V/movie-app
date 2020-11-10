class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, presence: true, length: { minimum: 10 }

  has_many :actors
end
