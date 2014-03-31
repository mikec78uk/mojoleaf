class CreateTestOptions < ActiveRecord::Migration
  def change
    create_table :test_options do |t|

      t.integer :test_user_id
      t.integer :option_id
      t.boolean :is_good, default: true

      t.timestamps
    end
  end
end
