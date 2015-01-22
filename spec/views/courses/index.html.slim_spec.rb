require 'rails_helper'

RSpec.describe "courses/index", :type => :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :name => "Name",
        :code => "Code",
        :credits => 1,
        :period => "Period"
      ),
      Course.create!(
        :name => "Name",
        :code => "Code",
        :credits => 1,
        :period => "Period"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
  end
end
