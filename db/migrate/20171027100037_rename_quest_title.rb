class RenameQuestTitle < ActiveRecord::Migration[5.1]
  def change
    rename_column :quests, :title, :name
  end
end
