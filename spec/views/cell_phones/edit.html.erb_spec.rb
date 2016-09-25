require 'rails_helper'

RSpec.describe "cell_phones/edit", type: :view do
  before(:each) do
    @cell_phone = assign(:cell_phone, CellPhone.create!(
      :model => "MyString",
      :version => "MyString"
    ))
  end

  it "renders the edit cell_phone form" do
    render

    assert_select "form[action=?][method=?]", cell_phone_path(@cell_phone), "post" do

      assert_select "input#cell_phone_model[name=?]", "cell_phone[model]"

      assert_select "input#cell_phone_version[name=?]", "cell_phone[version]"
    end
  end
end
