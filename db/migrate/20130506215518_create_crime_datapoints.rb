class CreateCrimeDatapoints < ActiveRecord::Migration
  def change
    create_table :crime_datapoints do |t|
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
