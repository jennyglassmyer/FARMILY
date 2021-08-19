class ChangeAddressColumnsInUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :street, :string
    remove_column :users, :house_number, :integer
    remove_column :users, :post_code, :integer
    remove_column :users, :city, :string
    add_column :users, :address, :string
  end
end
