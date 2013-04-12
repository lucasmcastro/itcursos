class Course < ActiveRecord::Base
  attr_accessible :name, :duration, :credits, :content
  validates :name, :length => { :maximum => 18 }
  has_one :email_template
  has_many :course_promotions
end
