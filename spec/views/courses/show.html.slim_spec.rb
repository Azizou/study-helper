require 'rails_helper'

RSpec.describe "courses/show", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "Name",
      :code => "Code",
      :credits => 1,
      :period => "Period"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Period/)
  end
end
