class User < ActiveRecord::Base

  include Triumph::Achievements

  has_many :posts
  
end
