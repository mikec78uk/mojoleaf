class DestinationUrl < ActiveRecord::Migration
  def change
  	add_column :tests, :destination_url, :string
  end
end
