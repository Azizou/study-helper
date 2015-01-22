require 'rails_helper'

RSpec.describe "courses/edit", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "MyString",
      :code => "MyString",
      :credits => 1,
      :period => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_credits[name=?]", "course[credits]"

      assert_select "input#course_period[name=?]", "course[period]"
    end
  end
end
