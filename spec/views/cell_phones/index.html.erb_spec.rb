require 'rails_helper'

RSpec.describe "cell_phones/index", type: :view do
  before(:each) do
    assign(:cell_phones, [
      CellPhone.create!(
        :model => "Model",
        :version => "Version"
      ),
      CellPhone.create!(
        :model => "Model",
        :version => "Version"
      )
    ])
  end

  it "renders a list of cell_phones" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Version".to_s, :count => 2
  end
end
