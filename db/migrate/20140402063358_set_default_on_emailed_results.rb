class SetDefaultOnEmailedResults < ActiveRecord::Migration
  def change
  
  	change_column :tests, :results_emailed, :boolean, default: false
  	
  end
end
