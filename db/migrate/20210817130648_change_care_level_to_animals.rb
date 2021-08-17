class ChangeCareLevelToAnimals < ActiveRecord::Migration[6.0]
  def change
    change_column :animals, :care_level, :string
  end
end
