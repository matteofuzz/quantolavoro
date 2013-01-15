ActiveAdmin.register Project do
  menu :priority => 2

  index do
    selectable_column
  	column :customer
 		column :name
		column :description
		column('Total time'){|project| minutes_as_hm(project.total_time)}
		column :budget
		column :deadtime
		column :closed
  end

  show do
  	attributes_table do
  		row :customer
  		row :name
  		row :description
  		row('Total time'){|project| minutes_as_hm(project.total_time)}
  		row :budget
  		row :deadtime
  		row :closed
  		row('Features'){|project| project.features_list}
  	end
  end

  form do |f|
  	f.inputs do
  		f.input :customer
  		f.input :name
  		f.input :description
  		f.input :budget
  		f.input :deadtime
  		f.input :closed
	  	f.has_many :features do |feature|
	  			feature.input :name
	  			feature.input :description
	  			feature.input :done
	  			feature.input :invoiced
	  	end
  	end
  	f.actions
  end
end
