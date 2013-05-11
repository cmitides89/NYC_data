class CreateOfficials < ActiveRecord::Migration
  def change
    create_table :officials do |t|

      t.timestamps
    end
  end
end
