class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|

		t.string :quote
    	t.string :quote_by
    	t.string :tagline

      t.timestamps
    end
  end
end
