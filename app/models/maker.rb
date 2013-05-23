class Maker < ActiveRecord::Base
  attr_accessible :name
  has_one :porduct
end
