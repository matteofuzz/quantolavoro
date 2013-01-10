class TransformWorktimeInMinutesToWorks < ActiveRecord::Migration
  def up
    Work.where("worktime is not null").each do |w|
      w.update_attribute :worktime, w.worktime*60
    end
  end

  def down
    Work.where("worktime is not null").each do |w|
      w.update_attribute :worktime, w.worktime.div(60)
    end
  end
end
