require 'rubygems'
require 'csv'    

namespace :load do
  desc "Load Courses"
  task :master => :environment do
    
    Course.destroy_all
    Section.destroy_all
    csv_text = File.read("#{Rails.root}/lib/data/master_courses.csv")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    	row = row.to_hash
	  	row.delete("id")
	  	row.delete("updated_at")
	  	row.delete("created_at")
	  	@section = Section.find_by_name(row["section"])
	  	unless @section.present?
	  		@section = Section.create(:name=>row["section"],:status=>true)
	  	end
      @course = Course.new(row)
      @course.department = @section 
      @course.save
    end
         
  end
end