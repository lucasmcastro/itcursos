class CoursePromotion < ActiveRecord::Base
  belongs_to :course
  attr_accessible :course, :title, :content, :price, :order, :color, :url, :active

  def fill_with_defaults(course)
    self.title = course.name
    self.content = course.content
    self.price = 'parcelas de R$200'
    self.url = '#'
    self.color = 'amarelo'
  end

end
