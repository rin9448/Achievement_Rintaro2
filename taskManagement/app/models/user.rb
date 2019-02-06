class User < ApplicationRecord
  has_many :tasks, through: :task_assigns
  has_many :task_assigns
  has_many :projects, through: :project_assigns
  has_many :project_assigns
end
