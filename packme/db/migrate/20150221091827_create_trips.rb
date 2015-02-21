class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.string :location
    	t.datetime :leave_date
    	t.datetime :return_date
    	t.integer :user_id
      t.timestamps
    end
  end
end
