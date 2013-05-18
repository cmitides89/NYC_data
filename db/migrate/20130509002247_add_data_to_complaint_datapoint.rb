class AddDataToComplaintDatapoint < ActiveRecord::Migration
  def change
  	add_column :complaint_datapoints, :complaint_type, :string
  	add_column :complaint_datapoints, :descriptor, :string
  	add_column :complaint_datapoints, :latitude, :string
  	add_column :complaint_datapoints, :longitude, :string
  	add_column :complaint_datapoints, :date, :string
  	add_column :complaint_datapoints, :address, :string
  end
end
