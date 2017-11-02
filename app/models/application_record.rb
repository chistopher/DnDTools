class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :discovered, -> { where(discovered: true) }
end
