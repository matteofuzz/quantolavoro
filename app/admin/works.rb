ActiveAdmin.register Work do
  menu :priority => 3
  
  filter :project
  filter :workday
  filter :invoiced
  filter :note
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
  
  sidebar "Totals", :only => :index do
    attributes_table_for works do
      row(:worktime) { content_tag(:span, minutes_as_hm(works.sum(:worktime)), :class => "total") }
      row(:not_invoiced) { content_tag(:span, minutes_as_hm(works.where("invoiced = 0 OR invoiced IS NULL").sum(:worktime)), :class => "total") }
      row(:invoiced) { content_tag(:span, minutes_as_hm(works.where(:invoiced => true).sum(:worktime)), :class => "total") }
    end
  end
end
