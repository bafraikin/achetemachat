require 'rails_helper'

RSpec.describe "item_adds/new", type: :view do
  before(:each) do
    assign(:item_add, ItemAdd.new(
      :title => "MyString",
      :description => "MyText",
      :price => "9.99",
      :image_url => "MyString"
    ))
  end

  it "renders new item_add form" do
    render

    assert_select "form[action=?][method=?]", item_adds_path, "post" do

      assert_select "input[name=?]", "item_add[title]"

      assert_select "textarea[name=?]", "item_add[description]"

      assert_select "input[name=?]", "item_add[price]"

      assert_select "input[name=?]", "item_add[image_url]"
    end
  end
end
