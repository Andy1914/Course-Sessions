class Section < ActiveRecord::Base
  attr_accessible :name, :status,:personality_types
  has_many :courses
  serialize :personality_types,Array
  
  def personality_types
    read_attribute(:personality_types) || []
  end

  def personality_types=(perms)
    perms = perms.collect {|p| p unless p.blank? }.compact.uniq if perms
    write_attribute(:personality_types, perms)
  end
end
# Section.create(:name=>"Computer Science",:status=>true,:personality_types=>[1,2])