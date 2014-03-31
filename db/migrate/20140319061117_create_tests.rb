class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|

    	t.string :title
    	t.integer :duration
    	t.attachment :image
    	t.datetime :end_date
    	t.integer :used_id
    	t.boolean :test_completed
    	t.boolean :results_emailed



      t.timestamps
    end
  end
end
