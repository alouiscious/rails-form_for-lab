class StudentsController < ApplicationController
  def index
    @student = Student.all    
  end

  def new
    @student = Student.new(student_params)

  end

  def create
    @student = Student.create(:first_name params[:first_name], :last_name params[:last_name])
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]

  end

  def edit
    @student = Student.find(params[:id])
    
  end
  
  def update
    @student = Student.update(student_params)

  end

  private
  def student_params(*args)

    
  end
end