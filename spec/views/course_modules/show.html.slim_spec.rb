require 'rails_helper'

RSpec.describe "course_modules/show", :type => :view do
  before(:each) do
    @course_module = assign(:course_module, CourseModule.create!(
      :name => "Name",
      :period => "Period"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Period/)
  end
end
