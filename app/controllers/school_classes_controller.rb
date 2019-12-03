class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all    
  end

  def new
    @school_class = SchoolClass.new
    redirect_to new_school_class
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:first_name, :last_name))
    @school_class.save
    redirect_to new_school_class
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class = SchoolClass.update(school_class_params)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
    
  end

  def show
    @school_class = SchoolClass.find(params[:id])
    
  end

  private
    def school_class_params(*args)
      params.require(:school_class).permit(*args)    
    end
end