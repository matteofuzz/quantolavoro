class Feature < ActiveRecord::Base
  attr_accessible :description, :done, :invoiced, :name, :project_id
  belongs_to :project

  def name_status
  	s = name.truncate(30)
  	s << '(DONE)' if done
  	s
  end
end
