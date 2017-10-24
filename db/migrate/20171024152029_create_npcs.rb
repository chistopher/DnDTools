class CreateNpcs < ActiveRecord::Migration[5.1]
  def change
    create_table :npcs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
