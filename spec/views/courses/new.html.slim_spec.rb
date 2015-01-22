require 'rails_helper'

RSpec.describe "courses/new", :type => :view do
  before(:each) do
    assign(:course, Course.new(
      :name => "MyString",
      :code => "MyString",
      :credits => 1,
      :period => "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_credits[name=?]", "course[credits]"

      assert_select "input#course_period[name=?]", "course[period]"
    end
  end
end
