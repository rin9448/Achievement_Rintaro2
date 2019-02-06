class CreateTaskAssigns < ActiveRecord::Migration[5.0]
  def change
    create_table :task_assigns do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
