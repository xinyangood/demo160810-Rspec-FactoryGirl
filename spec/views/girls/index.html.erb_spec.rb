require 'rails_helper'

RSpec.describe "girls/index", :type => :view do
  before(:each) do
    assign(:girls, [
      Girl.create!(),
      Girl.create!()
    ])
  end

  it "renders a list of girls" do
    render
  end
end
