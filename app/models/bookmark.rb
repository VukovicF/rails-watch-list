class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :list_id, presence: true, uniqueness: { scope: :movie_id }
  validates :movie_id, presence: true
  validates :comment, length: { minimum: 6 }, presence: true
end
