class Work < ActiveRecord::Base
  belongs_to :feature
  belongs_to :project
  attr_accessible :invoiced, :note, :workday, :worktime
end
