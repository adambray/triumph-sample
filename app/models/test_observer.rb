class TestObserver < ActiveRecord::Observer
  observe :test
  
  def after_save(test)
    Achievement.check_achievements_for(test)
  end
end