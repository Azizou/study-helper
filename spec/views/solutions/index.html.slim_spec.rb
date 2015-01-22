require 'rails_helper'

RSpec.describe "solutions/index", :type => :view do
  before(:each) do
    assign(:solutions, [
      Solution.create!(
        :name => "Name"
      ),
      Solution.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of solutions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
