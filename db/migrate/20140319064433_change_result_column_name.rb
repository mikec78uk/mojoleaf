class ChangeResultColumnName < ActiveRecord::Migration
  def change
  	rename_column :results, :string, :chosen_word
  end
end
