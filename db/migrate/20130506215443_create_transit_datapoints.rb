class CreateTransitDatapoints < ActiveRecord::Migration
  def change
    create_table :transit_datapoints do |t|
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
