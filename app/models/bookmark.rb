class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, :movie, :list, presence: true
  validates :comment, length: { minimum: 6 }

  # validates :id, uniqueness: { scope: [:list_id,:movie_id], message: "unique"}

  validates :movie, uniqueness: {scope: :list}
end
