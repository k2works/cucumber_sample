class Product < ActiveRecord::Base
  attr_accessible :maker_id, :name, :price, :quantity
  belongs_to :maker
  validates_presence_of :maker_id, :name, :price, :quantity
end
