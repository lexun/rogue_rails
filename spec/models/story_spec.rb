require 'spec_helper'

describe Story do
	it 'validates the In Order To' do
		Story.new(:in_order_to => '', :as_a=>'PM', :i_want_to=>'Do the thing').should_not be_valid
	end

	it 'validates the As A' do
		Story.new(:in_order_to => 'Do good stuff', :as_a=>'', :i_want_to=>'Do the thing').should_not be_valid
	end

	it 'validates the I Want to' do
		Story.new(:in_order_to => 'Do good stuff', :as_a=>'PM', :i_want_to=>'').should_not be_valid
	end

end
