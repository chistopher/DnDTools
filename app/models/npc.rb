class Npc < ApplicationRecord
  has_and_belongs_to_many :quests
  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
  
end
