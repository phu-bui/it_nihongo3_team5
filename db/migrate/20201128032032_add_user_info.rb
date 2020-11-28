class AddUserInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_index :users, :name, unique: true
  end
end
