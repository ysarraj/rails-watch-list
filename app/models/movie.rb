class Movie < ApplicationRecord
    has_many :bookmarks
    validates :title, presence: true, uniqueness: true
    validates :overview, presence: true
    validates :rating, inclusion: { in: 1..10, message: "must be between 1 and 10" }
end
