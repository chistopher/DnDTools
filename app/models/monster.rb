class Monster < ApplicationRecord
  has_many :actions

  accepts_nested_attributes_for :actions

  validates :name, presence: true
end
