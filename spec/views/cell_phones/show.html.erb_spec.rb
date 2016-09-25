require 'rails_helper'

RSpec.describe "cell_phones/show", type: :view do
  before(:each) do
    @cell_phone = assign(:cell_phone, CellPhone.create!(
      :model => "Model",
      :version => "Version"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Version/)
  end
end
