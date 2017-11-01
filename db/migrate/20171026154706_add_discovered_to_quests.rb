class AddDiscoveredToQuests < ActiveRecord::Migration[5.1]
  def change
    add_column :quests, :discovered, :boolean, default: true
    add_column :npcs, :discovered, :boolean, default: true
  end
end
