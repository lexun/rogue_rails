require 'spec_helper'

describe Story do
  def new_story(attributes = {})
    project = Project.create!({:name => "Test project"})
    Story.new({:project_id => project.id, :in_order_to => 'Do good stuff', :as_a=>'PM', :i_want_to=>'Do the thing'}.merge(attributes))
  end

  it 'validates a valid story' do
    new_story.should be_valid
  end

	it 'validates the In Order To' do
		new_story(:in_order_to => '').should_not be_valid
	end

	it 'validates the As A' do
		new_story(:as_a=>'').should_not be_valid
	end

	it 'validates the I Want to' do
		new_story(:i_want_to=>'').should_not be_valid
	end

  it 'has a default status of Not Started' do
    story = new_story
    story.status.should == 'Not Started'
  end

  describe '#score' do
    [[3, 4, 4], [5, 5, 5], [1, 5, 1], [5, 0, 10], [1, 1, 5]].each do |array|
      it "calculates a score with bv: #{array[0]} and cv: #{array[1]}" do
        story = new_story({value: array[0], complexity: array[1]})
        expect(story.score).to eq(array[2])
      end
    end
  end

end
