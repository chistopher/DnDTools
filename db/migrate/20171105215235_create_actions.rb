class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.belongs_to :monster, index: true
      t.string :name
      t.text :desc
      t.integer :attack_bonus
      t.string :damage_dice
      t.integer :damage_bonus

      t.timestamps
    end
  end
end
