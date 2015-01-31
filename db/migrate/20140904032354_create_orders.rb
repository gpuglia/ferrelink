class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :salesman_id, :code, :bundle, :minimum_sale
      t.string :code, :description, :unit

      t.timestamps
    end
  end
end
