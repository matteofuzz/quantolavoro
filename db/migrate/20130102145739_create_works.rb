class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.date :workday
      t.time :worktime
      t.text :note
      t.references :feature
      t.references :project
      t.boolean :invoiced

      t.timestamps
    end
    add_index :works, :feature_id
    add_index :works, :project_id
  end
end
