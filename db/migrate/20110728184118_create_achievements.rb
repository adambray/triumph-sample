class CreateAchievements < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.string  :name
      t.text    :description
      t.string  :observe_class
      t.string  :conditions
      t.integer :quantity
      
      t.timestamps
    end
  end

  def self.down
    drop_table :achievements
  end
end
