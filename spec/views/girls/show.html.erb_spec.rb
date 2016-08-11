require 'rails_helper'

RSpec.describe "girls/show", :type => :view do
  before(:each) do
    @girl = assign(:girl, Girl.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
