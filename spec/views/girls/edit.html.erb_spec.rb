require 'rails_helper'

RSpec.describe "girls/edit", :type => :view do
  before(:each) do
    @girl = assign(:girl, Girl.create!())
  end

  it "renders the edit girl form" do
    render

    assert_select "form[action=?][method=?]", girl_path(@girl), "post" do
    end
  end
end
