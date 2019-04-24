class AddColumnsToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :image, :string
    add_column :clients, :uid, :string
   
  end
end
