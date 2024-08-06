create database RiwiAcademyDB;
use RiwiAcademyDB;
create table students(
id_student int primary key auto_increment,
name varchar(50) not null,
last_name varchar(50) not null,
document varchar(50) not null,
email varchar(50) not null,
status enum ('active', 'inactive') not null default 'active'
);
create table courses(
id_course int primary key auto_increment,
name varchar(50) not null unique
);
create table inscriptions(
id_inscription int primary key auto_increment,
id_course_fk int not null,
foreign key (id_course_fk) references courses (id_course),
id_student_fk int not null,
foreign key (id_student_fk) references students(id_student)
);
create table ratings(
id_rating int primary key auto_increment,
description varchar(200) not null,
rating int not null,
id_inscription_fk int not null,
foreign key(id_inscription_fk) references inscriptions(id_inscription)
);