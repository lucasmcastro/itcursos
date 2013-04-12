class CoursePromotion < ActiveRecord::Base
  belongs_to :course
  attr_accessible :course, :title, :content, :price, :order, :color, :url, :active
end
