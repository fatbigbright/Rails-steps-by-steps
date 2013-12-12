class Order < ActiveRecord::Base
  attr_accessible :description, :number, :quantity, :order_type
end
