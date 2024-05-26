create database movie_booking_ticket_project ;
use movie_booking_ticket_project ; 



/*  drop table movie ;drop table seats ;
drop table customer ;
drop table theatre ;
drop table tickets ; 
drop table show_details; */



CREATE TABLE tickets (
    ticket_no INT NOT NULL, 
    seat_no INT NOT NULL,
    show_date DATE NOT NULL,
    show_time TIME NOT NULL,
    hall_no INT NOT NULL,
    price dec NOT NULL,
    PRIMARY KEY (ticket_no),
    INDEX (hall_no), -- usable  forgien key 
    INDEX (seat_no) -- usable  forgien key 
);

CREATE TABLE show_details (
    show_time TIME,
    show_ending TIME,
    language_show VARCHAR(50),
    movie_name VARCHAR(50),
    PRIMARY KEY (show_time),
    INDEX (movie_name) -- usable  forgien key
);

CREATE TABLE theatre (
    location VARCHAR(50),
    theater_no INT NOT NULL,
    PRIMARY KEY (theater_no),
    FOREIGN KEY (theater_no) REFERENCES tickets(hall_no)
);

CREATE TABLE seats (
    seat_row INT NOT NULL,
    seat_column INT NOT NULL,
    seat_no INT NOT NULL,
    PRIMARY KEY (seat_no),
    FOREIGN KEY (seat_no) REFERENCES tickets(seat_no)
);

CREATE TABLE movie (
    release_date DATE,
    director VARCHAR(50),
    actor VARCHAR(50),
    movie_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (movie_name),
    FOREIGN KEY (movie_name) REFERENCES show_details(movie_name)
);

CREATE TABLE customer (
    ticket_no INT NOT NULL,
    customer_name VARCHAR(50),
    phone INT,
    PRIMARY KEY (customer_name),
    FOREIGN KEY (ticket_no) REFERENCES tickets(ticket_no)
); 
CREATE TABLE snacks (
    snack_id INT PRIMARY KEY,
    quantity INT NOT NULL,
    snack_name VARCHAR(50) NOT NULL
);

INSERT INTO tickets 
VALUES 
    (1, 101, '2024-05-03', '12:00:00', 1, 20.00),
    (2, 102, '2024-05-03', '14:00:00', 1, 20.00),
    (3, 103, '2024-05-03', '16:00:00', 1, 20.00),
    (4, 104, '2024-05-03', '18:00:00', 1, 20.00),
    (5, 105, '2024-05-03', '20:00:00', 1, 20.00),
    (6, 106, '2024-05-03', '22:00:00', 1, 20.00),
    (7, 107, '2024-05-04', '12:00:00', 2, 25.00),
    (8, 108, '2024-05-04', '14:00:00', 2, 25.00),
    (9, 109, '2024-05-04', '16:00:00', 2, 25.00),
    (10, 110, '2024-05-04', '18:00:00', 2, 25.00),
    (11, 111, '2024-05-04', '20:00:00', 2, 25.00),
    (12, 112, '2024-05-04', '22:00:00', 2, 25.00),
    (13, 113, '2024-05-05', '12:00:00', 3, 30.00),
    (14, 114, '2024-05-05', '14:00:00', 3, 30.00),
    (15, 115, '2024-05-05', '16:00:00', 3, 30.00),
    (16, 116, '2024-05-05', '18:00:00', 3, 30.00),
    (17, 117, '2024-05-05', '20:00:00', 3, 30.00),
    (18, 118, '2024-05-05', '22:00:00', 3, 30.00),
    (19, 119, '2024-05-06', '12:00:00', 4, 35.00),
    (20, 120, '2024-05-06', '14:00:00', 4, 35.00),
    (21, 121, '2024-05-06', '16:00:00', 4, 35.00),
    (22, 122, '2024-05-06', '18:00:00', 4, 35.00),
    (23, 123, '2024-05-06', '20:00:00', 4, 35.00),
    (24, 124, '2024-05-06', '22:00:00', 4, 35.00),
    (25, 125, '2024-05-07', '12:00:00', 5, 40.00),
    (26, 126, '2024-05-07', '14:00:00', 5, 40.00),
    (27, 127, '2024-05-07', '16:00:00', 5, 40.00),
    (28, 128, '2024-05-07', '18:00:00', 5, 40.00),
    (29, 129, '2024-05-07', '20:00:00', 5, 40.00),
    (30, 130, '2024-05-07', '22:00:00', 5, 40.00),
    (31, 131, '2024-05-08', '12:00:00', 6, 45.00),
    (32, 132, '2024-05-08', '14:00:00', 6, 45.00),
    (33, 133, '2024-05-08', '16:00:00', 6, 45.00),
    (34, 134, '2024-05-08', '18:00:00', 6, 45.00),
    (35, 135, '2024-05-08', '20:00:00', 6, 45.00),
    (36, 136, '2024-05-08', '22:00:00', 6, 45.00),
    (37, 137, '2024-05-09', '12:00:00', 7, 50.00),
    (38, 138, '2024-05-09', '14:00:00', 7, 50.00),
    (39, 139, '2024-05-09', '16:00:00', 7, 50.00),
    (40, 140, '2024-05-09', '18:00:00', 7, 50.00),
    (41, 141, '2024-05-09', '20:00:00', 7, 50.00),
    (42, 142, '2024-05-09', '22:00:00', 7, 50.00),
    (43, 143, '2024-05-10', '12:00:00', 8, 55.00),
    (44, 144, '2024-05-10', '14:00:00', 8, 55.00),
    (45, 145, '2024-05-10', '16:00:00', 8, 55.00),
    (46, 146, '2024-05-10', '18:00:00', 8, 55.00),
    (47, 147, '2024-05-10', '20:00:00', 8, 55.00),
    (48, 148, '2024-05-10', '22:00:00', 8, 55.00),
    (49, 149, '2024-05-11', '12:00:00', 9, 60.00),
    (50, 150, '2024-05-11', '14:00:00', 9, 60.00);


INSERT INTO show_details (show_time, show_ending, language_show, movie_name) VALUES 
('12:00:00', '14:30:00', 'English', 'BirdMan'),
('14:00:00', '16:30:00', 'English', 'The Truman Show'),
('16:00:00', '18:30:00', 'English', 'Pulp Fiction'),
('18:00:00', '20:30:00', 'English', 'Inception'),
('20:00:00', '22:30:00', 'English', 'The Grand Budapest');



INSERT INTO movie (release_date, director, actor, movie_name) VALUES 
('2014-10-05', 'Alejandro González Iñárritu', 'Michael Keaton', 'BirdMan'),
('1998-06-05', 'Peter Weir', 'Jim Carrey', 'The Truman Show'),
('1994-09-10', 'Quentin Tarantino', 'John Travolta', 'Pulp Fiction'),
('2010-07-16', 'Christopher Nolan', 'Leonardo DiCaprio', 'Inception'),
('2014-03-07', 'Wes Anderson', 'Ralph Fiennes', 'The Grand Budapest');







INSERT INTO theatre (location, theater_no)
VALUES 
    ('Main Hall', 1),
    ('Small Hall', 2),
    ('VIP Lounge', 3),
    ('Outdoor Stage', 4);

INSERT INTO customer 
VALUES 
    (1, 'John Doe', 1234567890),
    (2, 'Jane Smith', 9876543210),
    (3, 'Alice Johnson', 5551234567),
    (4, 'Bob Williams', 5559876543),
    (5, 'Emily Brown', 5551112222),
    (6, 'Michael Davis', 5554443333),
    (7, 'Sarah Wilson', 5557778888),
    (8, 'David Martinez', 5556669999),
    (9, 'Jessica Taylor', 5552223333),
    (10, 'Christopher Anderson', 5558889999),
    (11, 'Ashley Thomas', 5551113333),
    (12, 'Matthew Jackson', 5555556666),
    (13, 'Lauren White', 5557771111),
    (14, 'Daniel Harris', 5554445555),
    (15, 'Jennifer Clark', 5556667777),
    (16, 'Andrew Lewis', 5553338888),
    (17, 'Olivia Hall', 5559992222),
    (18, 'William Lee', 5552221111),
    (19, 'Sophia Scott', 5556663333),
    (20, 'Jacob Green', 5551117777);

INSERT INTO seats (seat_row, seat_column, seat_no)
VALUES 
    (1, 1, 101),
    (1, 2, 102),
    (1, 3, 103),
    (2, 1, 104),
    (2, 2, 105),
    (2, 3, 106),
    (1, 1, 107),
    (1, 2, 108),
    (2, 1, 109),
    (2, 2, 110),
    (1, 1, 111),
    (1, 2, 112),
    (1, 1, 113),
    (1, 2, 114),
    (1, 3, 115),
    (2, 1, 116),
    (2, 2, 117),
    (2, 3, 118),
    (2, 1, 119),
    (2, 2, 120);


INSERT INTO snacks 
VALUES 
    (50, 'Popcorn'),
    (30, 'Soda'),
    (20, 'Candy'),
    (40, 'Nachos'),
    (25, 'Pretzels');

-- delete from snacks where quantity<30; 

update snacks set quantity=quantity+2 where quantity<=40 ;
update seats set seat_no = seat_no+ 1 where seat_no>119 and seat_column=1;

select movie_name,director from movie where release_date ='2014-10-05';
select show_time as searsh_result  from show_details where movie_name=(select movie_name from movie where movie_name='The Grand Budapest');
select min(quantity) as almost_end , snack_name from snacks ;
select count(seat_no)  as numofseats from seats where seat_no>100 and seat_row=1;