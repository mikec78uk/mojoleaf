class ChangeColumnName < ActiveRecord::Migration
  def change
  
  	rename_column :tests, :used_id, :user_id
  end
end
