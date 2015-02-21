class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.boolean :is_packed
    	t.boolean :is_returned
    	t.integer :quantity
    	t.integer :user_id
    	t.integer :trip_id
      t.timestamps
    end
  end
end
