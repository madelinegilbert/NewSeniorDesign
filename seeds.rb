# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
students = [{:floor=>"Main level", :seating_area=>"pods", :technology=>"personal device", :activity=>"group study"}
  	       ]

students.each do |student|
  Student.create!(student)
end