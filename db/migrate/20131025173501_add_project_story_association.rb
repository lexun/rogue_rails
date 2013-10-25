class AddProjectStoryAssociation < ActiveRecord::Migration
  def change
    change_table :stories do |t|
	  	t.integer :project_id
	  end
  end
end
