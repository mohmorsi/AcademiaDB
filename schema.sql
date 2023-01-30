-- Create a table for general student information
CREATE TABLE students (
  id serial PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(255) NOT NULL,
  date_of_birth date NOT NULL,
  phone_number varchar(20) NOT NULL,
  address varchar(255) NOT NULL,
  admission_year date NOT NULL,
  course varchar(255) NOT NULL,
  scholarship varchar(255) NOT NULL
);

-- Create a table for attendance
CREATE TABLE attendance (
  id serial PRIMARY KEY,
  student_id int REFERENCES students(id),
  date date NOT NULL,
  status varchar(10) NOT NULL
);

-- Create a table for marks or results
CREATE TABLE marks (
  id serial PRIMARY KEY,
  student_id int REFERENCES students(id),
  subject varchar(255) NOT NULL,
  marks int NOT NULL
);

-- Create a table for fees
CREATE TABLE fees (
  id serial PRIMARY KEY,
  student_id int REFERENCES students(id),
  amount int NOT NULL,
  date date NOT NULL,
  status varchar(20) NOT NULL
);

-- Create a table for scholarships
CREATE TABLE scholarships (
  id serial PRIMARY KEY,
  student_id int REFERENCES students(id),
  scholarship_name varchar(255) NOT NULL,
  amount int NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL
);
