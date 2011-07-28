class Post < ActiveRecord::Base
  belongs_to :user

  def word_count
    content.split(" ").length
  end
  
  def contains_animal
    animals = %w( cat dog mouse giraffe chicken)
    animals.each do |animal|
      return false if content.split(" ").include? animal
    end
  end

end
