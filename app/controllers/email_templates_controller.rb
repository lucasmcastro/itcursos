# coding: utf-8
class EmailTemplatesController < ApplicationController
  layout "email_template", :only => [ :show ] 

  def index
    @email_templates = EmailTemplate.all
  end

  def show
    @email_template = EmailTemplate.find(params[:id])
  end

  def new
    @course = Course.find(params[:id])
    @email_template = EmailTemplate.new
    @email_template.fill_with_defaults @course
  end

  def edit
    @email_template = EmailTemplate.find(params[:id])
    @course = @email_template.course
  end

  def create
    @email_template = EmailTemplate.new(params[:email_template])
    @course = Course.find(params[:id])
    @email_template.course = @course

    if @email_template.save
      redirect_to @email_template, 
          notice: 'Template criado com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @email_template = EmailTemplate.find(params[:id])

    if @email_template.update_attributes(params[:email_template])
      redirect_to courses_path, 
          notice: 'Template atualizado.'
    else
      render action: "edit"
    end
  end

  def destroy
    @email_template = EmailTemplate.find(params[:id])
    @email_template.destroy
    redirect_to courses_path
  end
end
