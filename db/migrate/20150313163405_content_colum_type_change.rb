class ContentColumTypeChange < ActiveRecord::Migration
  def change
		change_column :contents, :quote_by, :text
  end
end
