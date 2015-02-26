class ChangeCodeInClients < ActiveRecord::Migration
  def change
    change_column :clients, :code, :string
  end
end
