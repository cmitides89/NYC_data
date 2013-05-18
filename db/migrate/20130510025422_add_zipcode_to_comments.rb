class AddZipcodeToComments < ActiveRecord::Migration
  def change
    add_column :comments, :zipcode_id, :integer
  end
end
