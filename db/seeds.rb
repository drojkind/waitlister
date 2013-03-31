User.delete_all
Reservation.delete_all

u1 = User.create(:name => "janehotel", :email => "janehotel@gmail.com", :password => "x", :password_confirmation => "x")
u2 = User.create(:name => 'stevehotel', :email => 'stevehotel@gmail.com', :password => 'x', :password_confirmation => 'x')
u3 = User.create(:name => 'matthotel', :email => 'matthotel@gmail.com', :password => 'x', :password_confirmation => 'x')

r1 = Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-22', day: 'fri', party_size: 2, est_wait: 20, act_wait: 23)
r2 = Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-22', day: 'fri', party_size: 4, est_wait: 15, act_wait: 13)
r3 = Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-22', day: 'fri', party_size: 5, est_wait: 10, act_wait: 10)
r4 = Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-22', day: 'fri', party_size: 2, est_wait: 30, act_wait: 35)
r5 = Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-23', day: 'sat', party_size: 4, est_wait: 40, act_wait: 38)
r6 = Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-23', day: 'sat', party_size: 4, est_wait: 35, act_wait: 30)
r7 = Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-23', day: 'sat', party_size: 3, est_wait: 30, act_wait: 27)
