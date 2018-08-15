class FixVariablesinRestaurant < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :phone_number, :string
    rename_column :restaurants, :adress, :address
  end
end
