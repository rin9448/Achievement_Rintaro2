class AddSprintRefToStory < ActiveRecord::Migration[5.2]
  def change
    add_reference :stories, :sprint, foreign_key: true
  end
end
