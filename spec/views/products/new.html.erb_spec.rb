require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :price => 1,
      :quantity => 1,
      :maker_id => 1
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_price[name=?]", "product[price]"
      assert_select "input#product_quantity[name=?]", "product[quantity]"
      assert_select "input#product_maker_id[name=?]", "product[maker_id]"
    end
  end
end
