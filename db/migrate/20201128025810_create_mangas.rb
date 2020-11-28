class CreateMangas < ActiveRecord::Migration[6.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.integer :number_of_pages
      t.float :price
      t.string :author
      t.string :pulisher

      t.timestamps
    end
  end
end
