class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
