require 'rails_helper'

RSpec.describe "course_modules/new", :type => :view do
  before(:each) do
    assign(:course_module, CourseModule.new(
      :name => "MyString",
      :period => "MyString"
    ))
  end

  it "renders new course_module form" do
    render

    assert_select "form[action=?][method=?]", course_modules_path, "post" do

      assert_select "input#course_module_name[name=?]", "course_module[name]"

      assert_select "input#course_module_period[name=?]", "course_module[period]"
    end
  end
end
