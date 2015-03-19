class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id, :product_id, :quantity
    end
  end
end
