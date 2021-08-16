class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.string :gender
      t.string :personality
      t.text :description
      t.integer :care_level
      t.integer :age
      t.float :price_per_day
      t.references :user_id, null: false, foreign_key: true
      t.text :care_instructions

      t.timestamps
    end
  end
end
