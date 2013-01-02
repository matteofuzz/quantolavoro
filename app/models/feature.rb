class Feature < ActiveRecord::Base
  attr_accessible :description, :done, :invoiced, :name, :project_id
  belongs_to :project
end
