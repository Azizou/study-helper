require 'rails_helper'

RSpec.describe "solutions/show", :type => :view do
  before(:each) do
    @solution = assign(:solution, Solution.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
