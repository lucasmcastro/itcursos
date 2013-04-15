# encoding: utf-8

class CoursePromotionsController < ApplicationController
  def index
    @promotions = CoursePromotion.all
  end

  def new
    @course = Course.find(params[:id])
    @promotion = CoursePromotion.new
    @promotion.fill_with_defaults @course
  end

  def create
    @course = Course.find(params[:id])
    @promotion = CoursePromotion.new(params[:course_promotion])
    @promotion.course = @course
    
    if @promotion.save
      redirect_to courses_url, notice: 'Promoção criada com sucesso.'
    else
      render action: "new"
    end
  end

  def edit
    @promotion = CoursePromotion.find(params[:id])
  end

  def update
    @promotion = CoursePromotion.find(params[:id])

    if @promotion.update_attributes(params[:course_promotion])
      redirect_to courses_url, notice: 'Promoção atualizada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @promotion = CoursePromotion.find(params[:id])
    @promotion.destroy
    redirect_to courses_url
  end
end
