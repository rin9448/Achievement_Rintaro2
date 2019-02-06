class AddStoryRefToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :story, foreign_key: true
  end
end
