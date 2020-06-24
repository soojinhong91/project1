User.destroy_all
u1 = User.create :email => 'abc@ga.co', :password => 'chicken'
u2 = User.create :email => 'def@ga.co', :password => 'chicken', :admin => true
puts "#{ User.count } users"

Animal.destroy_all
a1 = Animal.create :species => 'Cat', :age => '2 Years and 9 Months', :sex => 'Male', :color => 'Black', :image => '/assets/cat1.jpg'
a2 = Animal.create :species => 'Cat', :age => '5 Months', :sex => 'Female', :color => 'Orange', :image => '/assets/cat2.jpg'
a3 = Animal.create :species => 'Dog', :age => '11 Year', :sex => 'Male', :color => 'Black', :image => '/assets/dog1.jpg'
a4 = Animal.create :species => 'Dog', :age => '10 Months', :sex => 'Male', :color => 'White', :image => '/assets/dog2.jpg'
puts "#{ Animal.count } animals"

Center.destroy_all
c1 = Center.create :name => 'Kittie Kat Rescue', :contact => '0413561356', :address => 'Castle Hill NSW 2154'
c2 = Center.create :name => 'Sweethaven Rescue', :contact => '0489768976', :address => '5 Greenfield Parade, Bankstown NSW 2200'
c3 = Center.create :name => 'Hunter Animal Rescue', :contact => '0476547654', :address => '6 Burlington Pl, Rutherford NSW 2320'
c4 = Center.create :name => 'SAFE Newman', :contact => '0238393839', :address => '1 Gunsberg Ct, Pegs Creek WA 6714'
puts "#{ Center.count } centers"
