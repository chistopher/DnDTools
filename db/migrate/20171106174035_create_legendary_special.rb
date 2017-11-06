class CreateLegendarySpecial < ActiveRecord::Migration[5.1]
  def change
    create_table :monster_legendaries do |t|
      t.belongs_to :monster, index: true
      t.string :name
      t.text :desc
      t.integer :attack_bonus

      t.timestamps
    end

    create_table :monster_specials do |t|
      t.belongs_to :monster, index: true
      t.string :name
      t.text :desc
      t.integer :attack_bonus

      t.timestamps
    end
  end
end
