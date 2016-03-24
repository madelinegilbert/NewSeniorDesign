class Api::V1::StudentsController < ApplicationController
       respond_to :json
        
        def index
            respond_with Student.all
        end
      
        def show
            respond_with Student.find(params[:id])
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