class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :bundle, :minimum_sale, :price
      t.string :code, unique: true
      t.string :description, :unit

      t.timestamps
    end
  end
end
