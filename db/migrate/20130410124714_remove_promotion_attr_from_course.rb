class RemovePromotionAttrFromCourse < ActiveRecord::Migration
  def up
    @courses = Course.all
    @courses.each do |course|
      CoursePromotion.create(
        :course => course,
        :title => course.name,
        :content => course.description,
        :price => course.price,
        :order => course.order,
        :color => course.color,
        :url => course.url,
        :active => course.promoted
      )
    end
    remove_column :courses, :price
    remove_column :courses, :order
    remove_column :courses, :color
    remove_column :courses, :url
    remove_column :courses, :promoted
    remove_column :courses, :description
    remove_column :courses, :kind
  end

  def down
  end
end
