class AddShortUrlToTest < ActiveRecord::Migration
  def change
  	add_column :tests, :short_url, :string
  end
end
