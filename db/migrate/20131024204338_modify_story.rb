class ModifyStory < ActiveRecord::Migration
  def self.up
  	remove_column :stories, :title
  end


  def self.down
  	add_column :stories, :title, :string
  end
end
