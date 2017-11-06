class Monster::Legendary < ApplicationRecord
  belongs_to :monster

  def damage_dice=(param)
  end
  
  validates_presence_of :name, :desc
end
