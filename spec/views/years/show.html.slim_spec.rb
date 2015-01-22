require 'rails_helper'

RSpec.describe "years/show", :type => :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
