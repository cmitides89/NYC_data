class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.integer :neighborhood_id
      t.integer :zipcode_id
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
