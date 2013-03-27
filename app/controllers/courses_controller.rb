class CoursesController < ApplicationController
  def index
    @promoted_courses = Course.order('courses.order').find_all_by_promoted(true);
    @non_promoted_courses = Course.order('courses.order').find_all_by_promoted(false);
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(params[:course])

    if @course.save
      redirect_to courses_url, notice: 'Curso criado com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @course = Course.find(params[:id])

    if @course.update_attributes(params[:course])
      redirect_to courses_url, notice: 'Curso atualizado com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_url
  end
end
