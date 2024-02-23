class Movie < ApplicationRecord
  has_many :bookmarks
  validates :overview, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
  # validates :rating , numericality: {only_integer: true , greater_than_or_equal_to: 0,  less_than_or_equal_to: 10 }
end
