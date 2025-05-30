CREATE TABLE academic_years_t (
                                  id INT AUTO_INCREMENT PRIMARY KEY,
                                  year_label VARCHAR(255) NOT NULL,
                                  first_semester_description TEXT,
                                  second_semester_description TEXT
);


CREATE TABLE users_t (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         email VARCHAR(255) NOT NULL UNIQUE,
                         password VARCHAR(255) NOT NULL,
                         role ENUM('ADMIN', 'LECTURER', 'STUDENT') NOT NULL,

                         created_at DATETIME NOT NULL,
                         created_by VARCHAR(255) NOT NULL,
                         modified_at DATETIME DEFAULT NULL,
                         modified_by VARCHAR(255) DEFAULT NULL
);

CREATE TABLE lecturers_t (
                             id INT AUTO_INCREMENT PRIMARY KEY,
                             first_name VARCHAR(255) NOT NULL,
                             last_name VARCHAR(255) NOT NULL,
                             image_url VARCHAR(255),
                             date_of_birth DATE,
                             gender ENUM('MALE', 'FEMALE') NOT NULL,
                             academic_title VARCHAR(255),
                             first_join_date DATE,
                             active BOOLEAN,
                             user_id INT UNIQUE,

                             CONSTRAINT fk_lecturers_user FOREIGN KEY (user_id) REFERENCES users_t(id)
);

CREATE TABLE students_t (
                            id INT AUTO_INCREMENT PRIMARY KEY,
                            first_name VARCHAR(255) NOT NULL,
                            last_name VARCHAR(255) NOT NULL,
                            image_url VARCHAR(255),
                            user_id INT UNIQUE,
                            gender ENUM('MALE', 'FEMALE') NOT NULL,
                            date_of_birth DATE,
                            academic_year_id INT,
                            first_join_date DATE,
                            active BOOLEAN,

                            CONSTRAINT fk_students_user FOREIGN KEY (user_id) REFERENCES users_t(id),
                            CONSTRAINT fk_students_academic_year FOREIGN KEY (academic_year_id) REFERENCES academic_years_t(id)
);

CREATE TABLE courses_t (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           course_code VARCHAR(255) NOT NULL,
                           name VARCHAR(255) NOT NULL,
                           image_url VARCHAR(255),
                           description TEXT,
                           academic_year_id INT,
                           semester ENUM('FIRST_SEMESTER', 'SECOND_SEMESTER') NOT NULL,
                           lecturer_id INT,

                           CONSTRAINT fk_courses_academic_year FOREIGN KEY (academic_year_id) REFERENCES academic_years_t(id),
                           CONSTRAINT fk_courses_lecturer FOREIGN KEY (lecturer_id) REFERENCES lecturers_t(id)
);

CREATE TABLE course_reference_links (
                                        course_id INT NOT NULL,
                                        reference_links VARCHAR(1000) NOT NULL,

                                        FOREIGN KEY (course_id) REFERENCES courses_t(id)
);

CREATE TABLE news_t (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        title VARCHAR(255) NOT NULL,
                        description TEXT NOT NULL,
                        image_url VARCHAR(512),
                        created_at DATETIME NOT NULL,
                        created_by VARCHAR(255) NOT NULL,
                        modified_at DATETIME DEFAULT NULL,
                        modified_by VARCHAR(255) DEFAULT NULL
);

CREATE TABLE programming_contests_t (
                                        id INT AUTO_INCREMENT PRIMARY KEY,
                                        title VARCHAR(255) NOT NULL,
                                        description TEXT NOT NULL,
                                        image_url VARCHAR(512),
                                        start_date DATE NOT NULL,
                                        created_at DATETIME NOT NULL,
                                        created_by VARCHAR(255) NOT NULL,
                                        modified_at DATETIME DEFAULT NULL,
                                        modified_by VARCHAR(255) DEFAULT NULL
);

