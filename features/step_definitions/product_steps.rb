# -*- coding: utf-8 -*-
もし(/^正しい問い合わせ商品情報を登録した$/) do
    @product ||= {
    name: "商品A",
    price: 100,    
    quantity: 1,
    marker_id: 1
  }
  visit '/products/new'
  fill_in "product_name", with: @product[:name]
  fill_in "product_price", with: @product[:price]
  fill_in "product_quantity", with: @product[:quantity]
  select @product[:maker_id], from: "product_maker_id"

  click_button "Create Product"
end

ならば(/^商品登録完了メッセージが表示される$/) do
  page.should have_content "Product was successfully created."  
end
