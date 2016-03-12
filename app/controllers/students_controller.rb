class StudentsController < ApplicationController
  
  def student_params
    params.require(:student).permit(:seating_area, :technology, :activity, :floor)
  end 
  
  def index
    @students = Student.all
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def create
    respond_to do |format|
        format.html
        format.json { render "Posting"}
    end
  end
  
end