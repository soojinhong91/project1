class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.text :species
      t.text :age
      t.text :sex
      t.text :color
      t.text :image
      t.integer :center_id

      t.timestamps
    end
  end
end
