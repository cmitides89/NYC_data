class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :neighborhood_id
      t.float :number

      t.timestamps
    end
  end
end
