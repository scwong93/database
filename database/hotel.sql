create table room (
  id int primary key, price numeric(5,2), check_in date, check_out date
);

create table guest (
  id int primary key, booking_id int references booking(id), first_name varchar(10), last_name varchar(10)
);

create table booking (
  id int primary key, guest_id int references guest(id), room_id int references room(id)
);

insert into room
  values
  (101, 109.99, '2018-03-08', '2018-03-10'),
  (102, 119.99, '2018-03-08', '2018-03-10'),
  (103, 129.99, NULL, NULL),
  (104, 139.99, '2018-03-12', '2018-03-16'),
  (105, 109.99, '2018-04-03', '2018-04-08'),
  (106, 129.99, '2018-04-05', '2018-04-09');

insert into guest
  values
  (1, 242, 'Thomas', 'Han'),
  (2, 426, 'James', 'Roger'),
  (3, 734, 'Steve', 'Power'),
  (4, 651, 'Pam', 'Tran'),
  (5, 34, 'Mike', 'Kale'),
  (6, 426, 'Tracy', 'Young');

insert into booking
  values
  (2, 101, 101010),
  (2, 102, 202020),
  (4, 104, 404040),
  (2, 105, 505050),
  (2, 106, 123525),
  (2, 101, 203012),
  (3, 101, 234627),
  (4, 101, 252342);
