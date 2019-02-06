class Task < ApplicationRecord
  has_many :users, through :task_assigns
  has_mamy :task_assigns
  accepts_nested_attributes_for :task_assigns
  belongs_to :lane
end
