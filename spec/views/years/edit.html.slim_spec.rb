require 'rails_helper'

RSpec.describe "years/edit", :type => :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit year form" do
    render

    assert_select "form[action=?][method=?]", year_path(@year), "post" do

      assert_select "input#year_name[name=?]", "year[name]"
    end
  end
end
