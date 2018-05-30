require 'rails_helper'

RSpec.describe "item_adds/show", type: :view do
  before(:each) do
    @item_add = assign(:item_add, ItemAdd.create!(
      :title => "Title",
      :description => "MyText",
      :price => "9.99",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Image Url/)
  end
end
