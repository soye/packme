class LoadData < ActiveRecord::Migration
  def change
    # Create initial users.

    sy = User.new(:username => "soye", :password => "sophie")
    sy.save(:validate => false)

    en = User.new(:username => "emilytvnguyen", :password => "emily")
    en.save(:validate => false)

    hx = User.new(:username => "helenxiong12", :password => "helen")
    hx.save(:validate => false)
  
    
    # Create initial trips.

    trip1 = Trip.new(:location => "Guatemala", :leave_date => DateTime.now, :return_date => "2015-03-20 10:44:23")
    trip1.user = sy
    trip1.save(:validate => false)

    trip2 = Trip.new(:location => "Stanford", :leave_date => DateTime.now, :return_date => "2015-04-11 10:22:12")
    trip2.user = hx
    trip2.save(:validate => false)

    trip3 = Trip.new(:location => "San Diego", :leave_date => DateTime.now, :return_date => "2015-12-01 10:11:11")
    trip3.user = en
    trip3.save(:validate => false)

    trip4 = Trip.new(:location => "Orange County", :leave_date => DateTime.now, :return_date => "2015-04-12 01:23:12")
    trip4.user = en
    trip4.save(:validate => false)
    
    
    # Create initial comments.
    item1 = Item.new(:name => "Phone charger", :is_packed => true, :is_returned => false, :quantity => 1)
    item1.user = en
    item1.trip = trip3
    item1.save(:validate => false)

    item2 = Item.new(:name => "Laptop", :is_packed => false, :is_returned => false, :quantity => 1)
    item2.user = en
    item2.trip = trip4
    item2.save(:validate => false)

    item3 = Item.new(:name => "Glasses", :is_packed => true, :is_returned => true, :quantity => 1)
    item3.user = sy
    item3.trip = trip1
    item3.save(:validate => false)
  end

end