class Course < ActiveRecord::Base
  attr_accessible :color, :content, :credits, :description, 
  			:duration, :name, :promoted, :price, :url, :kind, :order

  validates :name, :length => { :maximum => 18 }
  validates :description, :length => { :maximum => 70 }
end
