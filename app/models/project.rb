class Project < ActiveRecord::Base
  attr_accessible :budget, :closed, :deadtime, :description, :name, :customer_id, :features_attributes

  has_many :works
  has_many :features
  belongs_to :customer

  accepts_nested_attributes_for :features

  scope :not_closed, where("closed <> ?", true)

  def total_time
  	works.sum(&:worktime)
  end

  def features_list
  	features.map(&:name_status).join(', ')
  end
end
