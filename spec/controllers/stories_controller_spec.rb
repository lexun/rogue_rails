require 'spec_helper'

describe StoriesController do
  describe '#sort' do
    let!(:s1) { Story.create(:in_order_to => 'x', :as_a=>'x', :i_want_to=>'x')}
    let!(:s2) { Story.create(:in_order_to => 'x', :as_a=>'x', :i_want_to=>'x')}
    let!(:s3) { Story.create(:in_order_to => 'x', :as_a=>'x', :i_want_to=>'x')}

    it "should order processes by the sort index" do
      post :sort, story: [s3.id, s1.id, s2.id]

      expect(Story.find(s1.id).position).to eql(2)
      expect(Story.find(s2.id).position).to eql(1)
      expect(Story.find(s3.id).position).to eql(3)
    end

    it "should render nothing" do
      expect(response.body).to be_empty
    end
  end
end
