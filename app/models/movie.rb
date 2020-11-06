class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, presence: true, lenght: { minimum: 10 }
end
