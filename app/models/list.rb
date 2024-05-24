class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :bookmarks
  has_many :movies, dependent: :destroy, through: :bookmarks
  has_one_attached :photo
end
