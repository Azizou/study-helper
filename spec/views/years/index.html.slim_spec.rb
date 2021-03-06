require 'rails_helper'

RSpec.describe "years/index", :type => :view do
  before(:each) do
    assign(:years, [
      Year.create!(
        :name => "Name"
      ),
      Year.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of years" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
