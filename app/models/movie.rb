class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, presence: true, length: { minimum: 10 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
