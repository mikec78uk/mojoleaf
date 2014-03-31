class CreateResultsTests < ActiveRecord::Migration
  def change
    create_table :results_tests do |t|
      t.integer :test_id
      t.integer :result_id

      t.timestamps
    end
  end
end
