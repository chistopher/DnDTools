class CreateJoinTableQuestNpc < ActiveRecord::Migration[5.1]
  def change
    create_table :quests_npcs, id: false do |t|
      t.belongs_to :quest, index: true
      t.belongs_to :npc, index: true
    end
  end
end
