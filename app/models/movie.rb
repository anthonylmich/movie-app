class Movie < ApplicationRecord
  validates :director, length: {minimum: 2}
  validates :plot, length: {minimum: 2}
  validates :title, presence: true
  validates :year, numericality: {greater_than: 13}
  
  has_many :actors #returns array of many actors
end
