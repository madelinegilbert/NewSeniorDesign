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
  
  def today
    @students = Student.where("created_at >= ?", Time.zone.now.beginning_of_day)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def yesterday 
    @students = Student.where(:created_at => (Time.now.midnight - 1.day)..Time.now.midnight)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def week
    @students = Student.where(:created_at =>(Time.now.midnight - 7.day)..Time.now)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def month
    @students = Student.where(:created_at =>(Time.now.midnight - 1.month)..Time.now)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def half
    @students = Student.where(:created_at =>(Time.now.midnight - 6.month)..Time.now)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def year
    @students = Student.where(:created_at =>(Time.now.midnight - 1.year)..Time.now)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def mainFloor 
    @students = Student.where(:floor => 1)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def lowerLevel
    @students = Student.where(:floor => 0) 
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def podSeating
    @students = Student.where(:seating_area => 'podsTotal1') .or(Student.where(:seating_area => 'podsTotal'))
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