class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :release_date, presence: true
  validates :overview, presence: true
  validates :poster_url, presence: true
end
