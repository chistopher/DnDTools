class CreateSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.text :desc
      t.string :page
      t.string :range
      t.string :components
      t.boolean :ritual
      t.string :duration
      t.boolean :concentration
      t.string :casting_time
      t.string :level
      t.string :school
      t.string :classes

      t.timestamps
    end
  end
end
