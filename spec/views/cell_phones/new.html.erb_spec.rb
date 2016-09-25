require 'rails_helper'

RSpec.describe "cell_phones/new", type: :view do
  before(:each) do
    assign(:cell_phone, CellPhone.new(
      :model => "MyString",
      :version => "MyString"
    ))
  end

  it "renders new cell_phone form" do
    render

    assert_select "form[action=?][method=?]", cell_phones_path, "post" do

      assert_select "input#cell_phone_model[name=?]", "cell_phone[model]"

      assert_select "input#cell_phone_version[name=?]", "cell_phone[version]"
    end
  end
end
