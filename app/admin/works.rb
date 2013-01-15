ActiveAdmin.register Work do
  menu :priority => 3
  
  filter :project
  filter :workday
  filter :invoiced
  filter :feature
  
  index do
    selectable_column
    column :workday
    column("Worktime"){|w| minutes_as_hm(w.worktime)}
    column :project
    column :note
    column :invoiced
    default_actions
  end
end
