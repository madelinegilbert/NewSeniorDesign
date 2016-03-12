class Student < ActiveRecord::Base
    
    def self.create!(student = {})
        
        s = Student.new(student)
        s.save!
    end
end