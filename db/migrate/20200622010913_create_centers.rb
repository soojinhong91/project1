class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.text :name
      t.text :contact
      t.text :address

      t.timestamps
    end
  end
end
