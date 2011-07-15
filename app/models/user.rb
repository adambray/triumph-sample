class User < ActiveRecord::Base
  include Achievements
  
  # This next line shouldn't be necessary, but including Achievemnts
  # doesn't seem to add it as expected
  has_many :completed_achievements
  has_many :posts
  
end
