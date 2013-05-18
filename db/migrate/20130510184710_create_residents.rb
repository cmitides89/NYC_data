class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|

      t.timestamps
    end
  end
end
