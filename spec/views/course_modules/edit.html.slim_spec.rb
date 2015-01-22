require 'rails_helper'

RSpec.describe "course_modules/edit", :type => :view do
  before(:each) do
    @course_module = assign(:course_module, CourseModule.create!(
      :name => "MyString",
      :period => "MyString"
    ))
  end

  it "renders the edit course_module form" do
    render

    assert_select "form[action=?][method=?]", course_module_path(@course_module), "post" do

      assert_select "input#course_module_name[name=?]", "course_module[name]"

      assert_select "input#course_module_period[name=?]", "course_module[period]"
    end
  end
end
