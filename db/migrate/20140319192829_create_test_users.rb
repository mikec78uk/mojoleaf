class CreateTestUsers < ActiveRecord::Migration
  def change
    create_table :test_users do |t|

      t.integer :test_id
      
      t.timestamps
    end
  end
end
