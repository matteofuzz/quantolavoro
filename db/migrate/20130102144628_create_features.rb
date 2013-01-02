class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.boolean :done, :default => false
      t.boolean :invoiced, :default => false
      t.integer :project_id

      t.timestamps
    end
  end
end
