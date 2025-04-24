CREATE TABLE student (
    roll INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    f_name VARCHAR(30) NOT NULL,
    city VARCHAR(15) NOT NULL,
    PRIMARY KEY (roll)
);


INSERT INTO student VALUES ('1', 'Rupa', 'F', 'Aziz', 'DHAKA'), ('2', 'Himu', 'M', 'Islam', 'Dhaka'), ('4', 'Anwar Hossain', 'M', 'Ali Akbar', 'Shashail'), ('3', 'Sweety', 'F', 'L', 'Shibpur'), ('5', 'Anu', 'F', 'Roni', 'Shibpur');



CREATE TABLE exam (
    exam_no INT UNSIGNED NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY (exam_no)
);


INSERT INTO exam (exam_no, date) VALUES ('1', '2015-03-14'), ('2', '2015-07-27'), ('3', '2015-11-19');



CREATE TABLE absence (
    roll INT UNSIGNED NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (roll) REFERENCES student (roll)
);


INSERT INTO absence (roll, date) VALUES ('3', '2015-03-14'), ('4', '2015-07-27');



CREATE TABLE score (
    exam_no INT UNSIGNED NOT NULL,
    roll INT UNSIGNED NOT NULL,
    marks INT NOT NULL,
    FOREIGN KEY (roll) REFERENCES student (roll),
    FOREIGN KEY (exam_no) REFERENCES exam (exam_no)
);


INSERT INTO score (exam_no, roll, marks) VALUES ('1', '1', '70'), ('1', '2', '80'), ('1', '4', '87'), ('1', '5', '70'), ('2', '1', '90'), ('2', '2', '75'), ('2', '3', '95'), ('2', '5', '79'), ('3', '1', '90'), ('3', '2', '84'), ('3', '3', '81'), ('3', '4', '82'), ('3', '5', '92');











   


