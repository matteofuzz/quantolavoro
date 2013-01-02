class Project < ActiveRecord::Base
  attr_accessible :budget, :closed, :deadtime, :description, :name, :customer_id
  has_many :features
  belongs_to :customer
end
