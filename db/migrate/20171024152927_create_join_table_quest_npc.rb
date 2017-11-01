class CreateJoinTableQuestNpc < ActiveRecord::Migration[5.1]
  def change
    create_table :npcs_quests, id: false do |t|
      t.belongs_to :quest, index: true
      t.belongs_to :npc, index: true
    end
  end
end
