class RenameType < ActiveRecord::Migration
    def change
        #             classes  old_column new_column
        rename_column :orders, :type,     :order_type
    end
end
