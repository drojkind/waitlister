User.delete_all
Reservation.delete_all
Guest.delete_all

u1 = User.create(:name => "janehotel", :email => "janehotel@gmail.com", :password => "x", :password_confirmation => "x")
u2 = User.create(:name => 'stevehotel', :email => 'stevehotel@gmail.com', :password => 'x', :password_confirmation => 'x')
u3 = User.create(:name => 'matthotel', :email => 'matthotel@gmail.com', :password => 'x', :password_confirmation => 'x')

