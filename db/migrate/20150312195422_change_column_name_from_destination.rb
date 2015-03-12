class ChangeColumnNameFromDestination < ActiveRecord::Migration
  def change
  	rename_column :tests, :destination_url, :chosen_destination
  end
end
