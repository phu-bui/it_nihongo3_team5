class CreateSchoolStuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :school_stuffs do |t|
      t.string :name
      t.float :price
      t.string :publisher

      t.timestamps
    end
  end
end
