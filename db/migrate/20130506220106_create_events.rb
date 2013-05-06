class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :user_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
