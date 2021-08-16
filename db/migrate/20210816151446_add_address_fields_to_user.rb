class AddAddressFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :address, :street
    add_column :users, :house_number, :integer
    add_column :users, :post_code, :integer
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
