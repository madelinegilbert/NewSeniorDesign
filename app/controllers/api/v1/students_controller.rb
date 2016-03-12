class Api::V1::StudentsController < ApplicationController
       respond_to :json
        
        def index
            respond_with Student.all
        end
      
        def show
            respond_with Student.find(params[:id])
        end
      
        def create

            new_student = Student.create!(:floor => params[:floor], :activity => params[:activity], :technology => params[:technology], :seating_area => params[:seating_area])
            render :status => 200,
            :json => { :success => true,
                      :info => "Student",
            :data => { :activity => new_student.activity,
                       :floor => new_provider.floor,
                       :technology => new_student.technology,
                       :seating => new_student.seating
                     }
            }
        end
      
        def update
            respond_with Student.update(params[:id], params[:students])
        end
        
        #butts
      
        def destroy
            respond_with Student.destroy(params[:id])
        end
end