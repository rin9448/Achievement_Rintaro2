class Story < ApplicationRecord
  belongs_to :sprint

  validates :name,
            presence: true

  validates :status,
            presence: true
end
