class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.string :color
      t.string :name
      t.string :sex, limit: 1
      t.text :description
      t.timestamps
    end
    add_index :cats, :birth_date
  end
end
