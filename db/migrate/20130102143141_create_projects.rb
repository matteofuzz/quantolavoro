class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.decimal :budget, :precision => 8, :scale => 2
      t.date :deadtime
      t.boolean :closed, :default => false

      t.timestamps
    end
  end
end
