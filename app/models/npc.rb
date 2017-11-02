class Npc < ApplicationRecord
  has_and_belongs_to_many :quests

  default_scope { where(discovered: true) }
end
