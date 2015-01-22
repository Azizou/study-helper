require 'rails_helper'

RSpec.describe "solutions/edit", :type => :view do
  before(:each) do
    @solution = assign(:solution, Solution.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit solution form" do
    render

    assert_select "form[action=?][method=?]", solution_path(@solution), "post" do

      assert_select "input#solution_name[name=?]", "solution[name]"
    end
  end
end
