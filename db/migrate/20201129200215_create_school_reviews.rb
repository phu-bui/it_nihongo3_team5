class CreateSchoolReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :school_reviews do |t|
      t.integer :user_id
      t.integer :school_stuff_id
      t.text :review

      t.timestamps
    end
  end
end
