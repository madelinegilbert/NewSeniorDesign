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
  
  def todayFirstFloor
    @students = Student.where("created_at >= ?", Time.zone.now.beginning_of_day, :floor => 1)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def todayLowerFloor
    @students = Student.where("created_at >= ?", Time.zone.now.beginning_of_day, :floor => 0)
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
  
  def yesterdayFirstFloor
    @students = Student.where(:created_at => (Time.now.midnight - 1.day)..Time.now.midnight, :floor =>1)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end 
  
  def yesterdayLowerFloor
    @students = Student.where(:created_at => (Time.now.midnight - 1.day)..Time.now.midnight, :floor => 0)
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
  
  def weekFirstFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 7.day)..Time.now, :floor => 1)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def weekLowerFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 7.day)..Time.now, :floor => 0)
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
  
  def monthFirstFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 1.month)..Time.now, :floor => 1)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def monthLowerFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 1.month)..Time.now, :floor => 0)
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
  
  def halfFirstFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 6.month)..Time.now, :floor => 1)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def halfLowerFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 6.month)..Time.now, :floor => 0)
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
  
  def yearFirstFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 1.year)..Time.now, :floor => 1)
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def yearLowerFloor
    @students = Student.where(:created_at =>(Time.now.midnight - 1.year)..Time.now, :floor => 0)
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
    @students = Student.where(:seating_area => ['podsTotal1','podsTotal'])
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def staff 
    @students = Student.where(:activity => "Working w/Staff")
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def browsing
    @students = Student.where(:activity => "Browsing")
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def circDesk
    @students = Student.where(:activity => "Circ Desk")
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def quietStudy
    @students = Student.where(:activity => "Quiet Study")
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def groupStudy
    @students = Student.where(:activity => "Group Study")
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def gamerChairs
    @students = Student.where(:seating_area => 'Gamer Chair')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def frontDesk
    @students = Student.where(:seating_area => 'frontDeskTotal')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def computerLab 
    @students = Student.where(:seating_area => 'computerLabTotal')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  # other stuff
  def scanners
    @students = Student.where(:technology => 'Scanner')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def studyRoom
    @students = Student.where(:seating_area => 'studyRoomTotal')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def photocopier
    @students = Student.where(:technology => 'Photocopier')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def personalDevice
    @students = Student.where(:technology => 'Personal Device')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def printer
    @students = Student.where(:technology => 'Printer')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def mediaScape
    @students = Student.where(:technology => 'Media Scape')
    respond_to do |format|
      format.html
      format.json { render json: @students }
    end
  end
  
  def itcComputer
    @students = Student.where(:technology => 'ITC Computer')
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