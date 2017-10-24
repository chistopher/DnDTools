class Npc < ApplicationRecord
  has_and_belongs_to_many :quests
end
