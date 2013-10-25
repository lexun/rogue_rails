class AddStatusToStory < ActiveRecord::Migration
  def change
    add_column :stories, :status, :string, default:"Not Started"
  end
end
