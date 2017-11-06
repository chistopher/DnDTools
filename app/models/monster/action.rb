class Monster::Action < ApplicationRecord
  belongs_to :monster

  validates_presence_of :name, :desc
end
