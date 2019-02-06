class Sprint < ApplicationRecord
  belongs_to :project
  has_many :stories

  validates :name,
            presence: true

end
