class User < ApplicationRecord
  has_many :projects, through: :project_assigns
  has_many :project_assigns
  has_many :tasks, through: :task_assigns
  has_many :task_assigns

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,
            length: { minimum: 1, maximum: 50 },
            presence: true

  validates :email,
            length: { minimum: 1, maximum: 50 },
            presence: true,
            uniqueness: true,
            format: { with: VALID_EMAIL_REGEX }

  validates :password,
            length: { minimum: 8, maximum: 16 },
            presence: true
end
