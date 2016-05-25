class Course < ActiveRecord::Base
  attr_accessible :description, :institution, :instructor, :section, :title, :url
  belongs_to :department, :foreign_key => :section_id, :class_name => "Section"
  
end
