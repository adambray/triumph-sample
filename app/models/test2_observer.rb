class Test2Observer < ActiveRecord::Observer
  observe :test2
  
  def after_save(test2)
    Achievement.check_achievements_for(test2)
  end
end