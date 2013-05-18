class AddNeighborhoodsIdToZipcode < ActiveRecord::Migration
  def change
    add_column :zipcodes, :neighborhoods_id, :integer
  end
end
