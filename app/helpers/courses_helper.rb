module CoursesHelper
  def template_link(course)
    if course.email_template
      return edit_email_template_url(course.email_template)
    else
      return new_email_template_url(course)
    end
  end
  def promotion_link(course)
    if course.course_promotion
      return edit_course_promotion_url(course.course_promotion)
    else
      return new_course_promotion_url(course)
    end
  end
end
