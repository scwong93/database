create table student (
  studentID int primary key, name text, address text, contact varchar(15)
);

create table class (
  classID int primary key, title varchar(15), subject varchar(15)
);

create table grade (
  studentID int references student(studentID), grade varchar(1), classID int references class(classID)
);

insert into student
  values
  (1, ‘Thomas Douglass’, ‘123 Market St’, ‘819-235-3451’),
  (2, ‘Mary Smith’, ‘23 Olispo Lane’, ‘934-125-2352’),
  (3, ‘Jackie Chen’, ‘46 Valencia St’, ‘234-743-2341’),
  (4, ‘Anna Chung’, ‘923 California St’, ‘920-839-8279’),
  (5, ‘Amy Perkins’, ‘82 Spruce St’, ‘823-591-3930’),
  (6, ‘Oliver Frank’, ‘93 Fillmore St’, ‘352-274-3732’);

insert into class
  values
  (234, ‘Biology’, ‘Science’),
  (351, ‘Calculus’, ‘Math’),
  (482, ‘Speech’, ‘English’),
  (820, ‘Japanese’, ‘Language’),
  (267, ‘US History’, ‘History’);

insert into grade
  values
  (1, ‘B’, 234),
  (1, ‘C’, 351),
  (1, ‘A’, 482),
  (1, ‘A’, 820),
  (1, ‘F’, 267),
  (2, ‘C’, 234),
  (2, ‘C’, 267),
  (3, ‘A’, 351),
  (3, ‘A’, 820),
  (3, ‘A’, 267),
  (4, ‘B’, 351),
  (4, ‘C’, 820),
  (4, ‘C’, 482),
  (4, ‘D’, 267);
