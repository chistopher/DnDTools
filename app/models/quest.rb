class Quest < ApplicationRecord
  has_and_belongs_to_many :npcs

  validates :title, presence: true, length: { minimum: 5 }, uniqueness: true
end
