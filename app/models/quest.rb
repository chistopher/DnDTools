class Quest < ApplicationRecord
  has_and_belongs_to_many :npcs
  accepts_nested_attributes_for :npcs
  default_scope { where(discovered: true) }
  validates :name, presence: true, length: { minimum: 5 }, uniqueness: true

  def npcs_attributes=(attributes)
    npc_ids = attributes.values.map {|hash| hash[:id] }
    npc_ids = npc_ids.select { |value| value != nil }
    self.npcs = Npc.unscoped.where(id: npc_ids)
  end
end
