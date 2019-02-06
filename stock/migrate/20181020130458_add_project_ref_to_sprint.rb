class AddProjectRefToSprint < ActiveRecord::Migration[5.2]
  def change
    add_reference :sprints, :project, foreign_key: true
  end
end
