class CreateStory < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.string :title, :limit => 50
    	t.string :in_order_to, :limit => 150
    	t.string :as_a, :limit => 50
    	t.string :i_want_to, :limit => 500

    	t.integer :value, :limit => 1
    	t.integer :complexity, :limit => 1
      	

    end
  end
end
