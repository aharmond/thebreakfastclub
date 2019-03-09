class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :days
      t.trip :belongs_to

      t.timestamps
    end
  end
end
