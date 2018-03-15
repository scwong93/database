create table student (
  studentid int primary key, name varchar(20), address text, contact varchar(15)
);

create table class (
  classid int primary key, title varchar(20), subject varchar(15)
);

create table grade (
  studentid int references student(studentid), grade varchar(1), classid int references class(classid)
);

insert into student
  values
  (1, 'Thomas Douglass', '123 Market St', '234-236-2346'),
  (2, 'Mary Smith', '23 Olisbo Lane', '234-623-7157'),
  (3, 'Jackie Chen', '46 Valencia St', '934-236-7425'),
  (4, 'Anna Perry', '923 California St', '982-928-0726'),
  (5, 'Amy Perkins', '82 Spruce St', '720-927-8295'),
  (6, 'Oliver Frank', '93 Fillmore St', '235-972-3826');

insert into class
  values
  (234, 'Biology', 'Science'),
  (351, 'Calculus', 'Math'),
  (482, 'Speech', 'English'),
  (820, 'Japanese', 'Language'),
  (267, 'US History', 'History');

insert into grade
  values
  (1, 'B', 234),
  (1, 'C' 351),
  (1, 'A', 482),
  (1, 'A', 820),
  (1, 'F', 267),
  (2, 'C', 234),
  (2, 'C', 267),
  (3, 'A', 351),
  (3, 'A', 820),
  (3, 'A', 267),
  (4, 'B', 351),
  (4, 'C', 820),
  (4, 'C', 482),
  (4, 'D', 267);
