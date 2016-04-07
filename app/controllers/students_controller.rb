class StudentsController < ApplicationController
  respond_to :json
  skip_before_filter  :verify_authenticity_token
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
  
  def queryByToday
    @students = Student.where(:created_at => Date.today.beginning_of_day)
    respond_to do |format|
      format.html
      format.json { render json: @student }
  end
  
  def queryByLastWeek
    @students = Student.where(:created_at => Date.today.beginning_of_day..@selected_date.end_of_day)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def create
    new_student = Student.create!(:floor => params[:floor], :seating_area => params[:seating_area], :technology => params[:technology], :activity => params[:activity])
      render :status => 200,
             :json => { :success => true,
                        :info => "Student Created",
               :data => { :floor => new_student.floor,
                          :seating_area => new_student.seating_area,
                          :technology => new_student.technology,
                          :activity => new_student.activity
                          }
                      }
  end
  
end