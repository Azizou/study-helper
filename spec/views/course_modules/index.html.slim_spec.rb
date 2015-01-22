require 'rails_helper'

RSpec.describe "course_modules/index", :type => :view do
  before(:each) do
    assign(:course_modules, [
      CourseModule.create!(
        :name => "Name",
        :period => "Period"
      ),
      CourseModule.create!(
        :name => "Name",
        :period => "Period"
      )
    ])
  end

  it "renders a list of course_modules" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
  end
end
