class CreateMangaReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :manga_reviews do |t|
      t.integer :user_id
      t.integer :manga_id
      t.text :review
      t.text :detail

      t.timestamps
    end
  end
end
