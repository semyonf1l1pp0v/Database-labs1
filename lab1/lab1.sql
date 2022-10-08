CREATE TABLE countries
(c_id numeric(3) PRIMARY KEY,
name varchar(64) NOT NULL);
 

 
CREATE TABLE timetable
(id smallint PRIMARY KEY,
departure timestamp NOT NULL,
dep_place varchar(2000) DEFAULT 'Москва' NOT NULL,
arr_place varchar(2000) NOT NULL,
stop_count smallint NOT NULL CHECK(stop_count > 0),
train_type varchar(9) NOT NULL CHECK(train_type = 'скорый'
or train_type = 'фирменный'
or train_type = 'обычный'),
country_id numeric(3) NOT NULL REFERENCES countries(c_id));
