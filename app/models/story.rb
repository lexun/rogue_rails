class Story < ActiveRecord::Base

	validates :in_order_to, :presence => true
	validates :as_a, :presence => true
	validates :i_want_to, :presence => true
	validates :value, :numericality => {:in => 0..5}, :allow_nil => true


end
