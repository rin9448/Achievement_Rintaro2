class CreateSprints < ActiveRecord::Migration[5.2]
  def change
    create_table :sprints do |t|
      t.string :name
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
