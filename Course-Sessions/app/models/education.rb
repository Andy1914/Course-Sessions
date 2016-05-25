class Education < ActiveRecord::Base
  attr_accessible :education_level, :job, :resume
  mount_uploader :resume, ResumeUploader
end