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

INSERT INTO students (first_name, last_name, email, date_of_birth, phone_number, address, admission_year, course, scholarship)
VALUES 
  ('John', 'Doe', 'johndoe@example.com', '1999-01-01', '1234567890', '1234 Main St, Los Angeles', '2022-01-01', 'Computer Science', 'Full Tuition Waiver'),
  ('Jane', 'Doe', 'jane.doe@example.com', '1985-03-15', '555-555-1213', '5678 Elm St, New York', '2011-02-01', 'Mathematics', 'Half Tuition Waiver'),
  ('Jim', 'Smith', 'jim.smith@example.com', '1990-05-20', '555-555-1214', '91011 Oak Ave, Chicago', '2012-03-01', 'Physics', 'Merit-Based Waiver'),
  ('Alex', 'Johnson', 'alex.johnson@example.com', '1995-07-10', '555-555-1215', '23456 Pine Rd, Houston', '2013-04-01', 'Chemistry', 'Need-Based Waiver'),
  ('Amy', 'Williams', 'amy.williams@example.com', '2000-09-01', '555-555-1216', '67890 Cedar Blvd, Philadelphia', '2014-05-01', 'Athletic Waiver'),
  ('Brian', 'Brown', 'brian.brown@example.com', '2005-11-05', '555-555-1217', '12345 Maple Dr, San Francisco', '2015-06-01', 'Diversity Waiver'),
  ('Carol', 'Jones', 'carol.jones@example.com', '2010-01-15', '555-555-1218', '54321 Cedar St, Washington', '2016-07-01', 'Military Waiver'),
  ('David', 'Miller', 'david.miller@example.com', '2015-03-20', '555-555-1219', '98765 Oak St, Atlanta', '2017-08-01', 'International Student Waiver'),
  ('Emily', 'Davis', 'emily.davis@example.com', '2020-05-10', '555-555-1220', '11111 Elm Rd, Dallas', '2018-09-01', 'Creative Arts Waiver'),
  ('Frank', 'Garcia', 'frank.garcia@example.com', '2025-07-01', '555-555-1221', '22222 Main Ave, Miami', '2019-10-01', 'Community Service Waiver');

-- Insert entries into the attendance table
INSERT INTO attendance (student_id, date, status)
VALUES
  (1, '2022-01-01', 'Present'),
  (1, '2022-01-02', 'Absent'),
  (1, '2022-01-03', 'Present'),
  (2, '2022-01-01', 'Present'),
  (2, '2022-01-02', 'Absent'),
  (2, '2022-01-03', 'Present'),
  (3, '2022-01-01', 'Absent'),
  (3, '2022-01-02', 'Present'),
  (3, '2022-01-03', 'Absent'),
  (4, '2022-01-01', 'Present');

-- Insert entries into the marks table
INSERT INTO marks (student_id, subject, marks)
VALUES
  (1, 'Computer Science', 85),
  (1, 'Mathematics', 75),
  (1, 'Physics', 80),
  (2, 'Computer Science', 90),
  (2, 'Mathematics', 95),
  (2, 'Physics', 85),
  (3, 'Computer Science', 80),
  (3, 'Mathematics', 70),
  (3, 'Physics', 75),
  (4, 'Computer Science', 85);

-- Insert entries into the fees table
INSERT INTO fees (student_id, amount, date, status)
VALUES
  (1, 1000, '2022-01-01', 'Paid'),
  (1, 1000, '2022-02-01', 'Paid'),
  (1, 1000, '2022-03-01', 'Paid'),
  (2, 1000, '2022-01-01', 'Paid'),
  (2, 1000, '2022-02-01', 'Paid'),
  (2, 1000, '2022-03-01', 'Paid'),
  (3, 1000, '2022-01-01', 'Unpaid'),
  (3, 1000, '2022-02-01', 'Unpaid'),
  (3, 1000, '2022-03-01', 'Unpaid'),
  (4, 1000, '2022-01-01', 'Paid');

-- Insert entries into the scholarship table
INSERT INTO scholarship (student_id, amount, start_date, end_date)
VALUES
  (1, 500, '2022-01-01', '2022-12-31'),
  (2, 500, '2022-01-01', '2022-12-31'),
  (3, 500, '2022-01-01', '2022-12-31'),
  (4, 500, '2022-01-01', '2022-12-31');
