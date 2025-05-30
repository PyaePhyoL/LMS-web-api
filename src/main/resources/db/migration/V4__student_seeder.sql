-- Student 1
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'emilyjohnson@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Emily',
           'Johnson',
           'https://example.com/students/emily_johnson.jpg',
           (SELECT id FROM users_t WHERE email = 'emilyjohnson@university.edu'),
           'FEMALE',
           '2002-05-15',
           3,
           '2021-09-01',
           TRUE
       );

-- Student 2
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'michaelsmith@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Michael',
           'Smith',
           'https://example.com/students/michael_smith.jpg',
           (SELECT id FROM users_t WHERE email = 'michaelsmith@university.edu'),
           'MALE',
           '2003-08-22',
           2,
           '2022-09-01',
           TRUE
       );

-- Student 3
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'sophiawilliams@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Sophia',
           'Williams',
           'https://example.com/students/sophia_williams.jpg',
           (SELECT id FROM users_t WHERE email = 'sophiawilliams@university.edu'),
           'FEMALE',
           '2001-11-30',
           4,
           '2020-09-01',
           TRUE
       );

-- Student 4
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'jacobbrown@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Jacob',
           'Brown',
           'https://example.com/students/jacob_brown.jpg',
           (SELECT id FROM users_t WHERE email = 'jacobbrown@university.edu'),
           'MALE',
           '2004-02-14',
           1,
           '2023-09-01',
           TRUE
       );

-- Student 5
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'oliviajones@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Olivia',
           'Jones',
           'https://example.com/students/olivia_jones.jpg',
           (SELECT id FROM users_t WHERE email = 'oliviajones@university.edu'),
           'FEMALE',
           '2000-07-19',
           5,
           '2019-09-01',
           TRUE
       );

-- Student 6
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'ethangarcia@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Ethan',
           'Garcia',
           'https://example.com/students/ethan_garcia.jpg',
           (SELECT id FROM users_t WHERE email = 'ethangarcia@university.edu'),
           'MALE',
           '2003-04-25',
           2,
           '2022-09-01',
           TRUE
       );

-- Student 7
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'avamiller@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Ava',
           'Miller',
           'https://example.com/students/ava_miller.jpg',
           (SELECT id FROM users_t WHERE email = 'avamiller@university.edu'),
           'FEMALE',
           '2002-09-08',
           3,
           '2021-09-01',
           TRUE
       );

-- Student 8
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'noahdavis@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Noah',
           'Davis',
           'https://example.com/students/noah_davis.jpg',
           (SELECT id FROM users_t WHERE email = 'noahdavis@university.edu'),
           'MALE',
           '2001-12-03',
           4,
           '2020-09-01',
           TRUE
       );

-- Student 9
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'isabellarodriguez@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Isabella',
           'Rodriguez',
           'https://example.com/students/isabella_rodriguez.jpg',
           (SELECT id FROM users_t WHERE email = 'isabellarodriguez@university.edu'),
           'FEMALE',
           '2004-06-17',
           1,
           '2023-09-01',
           TRUE
       );

-- Student 10
INSERT INTO users_t (email, password, role, created_at, created_by)
VALUES (
           'liammartinez@university.edu',
           '$2a$10$Ao1R/Fded/WSZN4LXOk9OuECocvkPQOKtTg.Dg5a3qwYgicH50QCW',
           'STUDENT',
           NOW(),
           'admin'
       );

INSERT INTO students_t (first_name, last_name, image_url, user_id, gender, date_of_birth, academic_year_id, first_join_date, active)
VALUES (
           'Liam',
           'Martinez',
           'https://example.com/students/liam_martinez.jpg',
           (SELECT id FROM users_t WHERE email = 'liammartinez@university.edu'),
           'MALE',
           '2000-03-29',
           5,
           '2019-09-01',
           TRUE
       );