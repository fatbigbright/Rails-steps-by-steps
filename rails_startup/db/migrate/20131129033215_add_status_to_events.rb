class AddStatusToEvents < ActiveRecord::Migration
  def change
      #method    records  column   column type
      add_column :events, :status, :string
  end
end
