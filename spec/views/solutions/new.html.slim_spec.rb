require 'rails_helper'

RSpec.describe "solutions/new", :type => :view do
  before(:each) do
    assign(:solution, Solution.new(
      :name => "MyString"
    ))
  end

  it "renders new solution form" do
    render

    assert_select "form[action=?][method=?]", solutions_path, "post" do

      assert_select "input#solution_name[name=?]", "solution[name]"
    end
  end
end
