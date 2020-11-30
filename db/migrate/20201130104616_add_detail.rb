class AddDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :mangas, :detail, :text
  end
end
