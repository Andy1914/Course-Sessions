class Personality < ActiveRecord::Base
  attr_accessible :creators, :doers, :helpers, :organizers, :persuaders, :thinkers
end
