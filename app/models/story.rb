class Story < ActiveRecord::Base

	

validates_numericality_of :value, :in => 0..5
validates_numericality_of :complexity, :in => 0..5


end