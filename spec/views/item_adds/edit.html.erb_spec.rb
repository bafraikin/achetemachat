require 'rails_helper'

RSpec.describe "item_adds/edit", type: :view do
  before(:each) do
    @item_add = assign(:item_add, ItemAdd.create!(
      :title => "MyString",
      :description => "MyText",
      :price => "9.99",
      :image_url => "MyString"
    ))
  end

  it "renders the edit item_add form" do
    render

    assert_select "form[action=?][method=?]", item_add_path(@item_add), "post" do

      assert_select "input[name=?]", "item_add[title]"

      assert_select "textarea[name=?]", "item_add[description]"

      assert_select "input[name=?]", "item_add[price]"

      assert_select "input[name=?]", "item_add[image_url]"
    end
  end
end
