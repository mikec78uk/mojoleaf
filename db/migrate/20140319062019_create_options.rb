class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
    	t.string   :category
   		t.string   :option_name
      t.timestamps
    end
  end
end
