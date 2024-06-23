CREATE TABLE Homework (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE Lesson (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    updatedAt TIMESTAMP,
    homework_id INT UNIQUE,
    FOREIGN KEY (homework_id) REFERENCES Homework(id)
);

CREATE TABLE Schedule(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    updateAt TIMESTAMP
);

CREATE TABLE Schedule_Lesson(
    id INT AUTO_INCREMENT PRIMARY KEY,
    schedule_id INT NOT NULL,
    lesson_id INT NOT NULL,
    FOREIGN KEY (schedule_id) REFERENCES Schedule(id),
    FOREIGN KEY (lesson_id) REFERENCES Lesson(id)
);