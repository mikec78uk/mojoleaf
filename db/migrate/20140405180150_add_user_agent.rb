class AddUserAgent < ActiveRecord::Migration
  def change
  	add_column :test_users, :ip_address, :string
  	add_column :test_users, :user_agent, :string
  end
end
