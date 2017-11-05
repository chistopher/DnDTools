class Spell < ApplicationRecord
  validates :name, presence: true
end
