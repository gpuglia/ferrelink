class AddClientFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :client_name, :string
    add_column :orders, :client_code, :string
  end
end
