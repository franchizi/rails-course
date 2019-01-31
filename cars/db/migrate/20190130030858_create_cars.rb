class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :color
      t.string :year
      t.integer :brand_id
      t.timestamps
    end
  end
end
