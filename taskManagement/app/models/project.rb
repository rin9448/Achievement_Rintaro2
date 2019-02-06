class Project < ApplicationRecord
  has_many :users, through :project_assigns
  has_mamy :project_assigns
  accepts_nested_attributes_for :project_assigns
endcd
