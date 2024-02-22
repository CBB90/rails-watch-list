class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # has_many :movies, dependent: :destroy
  validates :comment ,length: { minimum: 6 }
  # validates :movie, presence: true
  # validates :list, presence: true
  validates :movie, uniqueness: { scope: :list,
    message: "a movie should be in the list" }
end
