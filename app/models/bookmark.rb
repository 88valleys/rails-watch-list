class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }

  # :movie_id specifies the field being validated. The uniqueness: {scope: :list_id, message: "is already in the list"}
  # validation ensures that each movie can only appear once per list, preventing duplicate entries.

  validates :movie_id, uniqueness: {scope: :list_id, message: "This movie is already in the list"}

end
