class CreateComplaintDatapoints < ActiveRecord::Migration
  def change
    create_table :complaint_datapoints do |t|
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
