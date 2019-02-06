class Task < ApplicationRecord
  has_many :users, through :task_assigns
  has_mamy :task_assigns
  accepts_nested_attributes_for :task_assigns
  belongs_to :story

  validates :name,
            presence: true

  validates :status,
            presence: true

  validates :password,
            presence: true
end
