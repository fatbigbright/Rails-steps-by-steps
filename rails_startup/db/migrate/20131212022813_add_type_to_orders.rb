class AddTypeToOrders < ActiveRecord::Migration
  def change
      #          classes, column, type
      add_column :orders, :type, :string
  end
end
