class ChangeWorktimeToWorks < ActiveRecord::Migration
  def up
  	change_column :works, :worktime, :integer
  end

  def down
  	change_column :works, :worktime, :time
  end
end
