class PostObserver < ActiveRecord::Observer
  observe :post
  
  def after_save(post)
    Triumph::Achievement.check_achievements_for(post)
  end
end