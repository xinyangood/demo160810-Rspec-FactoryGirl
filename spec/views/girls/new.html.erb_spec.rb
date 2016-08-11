require 'rails_helper'

RSpec.describe "girls/new", :type => :view do
  before(:each) do
    assign(:girl, Girl.new())
  end

  it "renders new girl form" do
    render

    assert_select "form[action=?][method=?]", girls_path, "post" do
    end
  end
end
