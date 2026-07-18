CREATE DATABASE if not exists TourismDB;
USE TourismDB;

CREATE TABLE Destinations (
    destination_id INT PRIMARY KEY AUTO_INCREMENT,
    destination_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    city VARCHAR(50),
    category VARCHAR(30),
    rating DECIMAL(2,1)
);
show tables;
CREATE TABLE TourPackages (
    package_id INT PRIMARY KEY AUTO_INCREMENT,
    package_name VARCHAR(100) NOT NULL,
    destination_id INT,
    duration_days INT,
    price DECIMAL(10,2),
    season VARCHAR(30),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

-- Destinations Data
INSERT INTO Destinations (destination_name, country, city, category, rating) VALUES
('Goa Beach','India','Goa','Beach',4.5),
('Manali Hills','India','Manali','Hill Station',4.7),
('Jaipur Fort','India','Jaipur','Heritage',4.4),
('Bali Island','Indonesia','Bali','Beach',4.8),
('Mount Fuji','Japan','Tokyo','Adventure',4.6);
select * from destinations data;

-- TourPackages Data
INSERT INTO TourPackages (package_name, destination_id, duration_days, price, season) VALUES
('Goa Delight',1,4,12000.00,'Winter'),
('Himalayan Escape',2,5,18000.00,'Summer'),
('Royal Rajasthan',3,3,15000.00,'Winter'),
('Bali Explorer',4,6,35000.00,'Autumn'),
('Fuji Adventure',5,7,40000.00,'Spring');

select * from tourpackages data;

#insert records

-- Destinations data
INSERT INTO Destinations (destination_name, country, city, category, rating) VALUES
('Goa Beach','India','Goa','Beach',4.5),
('Manali Hills','India','Manali','Hill Station',4.7),
('Jaipur Fort','India','Jaipur','Heritage',4.4),
('Bali Island','Indonesia','Bali','Beach',4.8),
('Mount Fuji','Japan','Tokyo','Adventure',4.6);

-- TourPackages data
INSERT INTO TourPackages (package_name, destination_id, duration_days, price, season) VALUES
('Goa Delight',1,4,12000.00,'Winter'),
('Himalayan Escape',2,5,18000.00,'Summer'),
('Royal Rajasthan',3,3,15000.00,'Winter'),
('Bali Explorer',4,6,35000.00,'Autumn'),
('Fuji Adventure',5,7,40000.00,'Spring');


### Basic updates

## Increase price of all packages by 10%
UPDATE TourPackages
SET price = price * 1.10;

## Change season to 'Summer' for Beach destinations
UPDATE TourPackages tp
JOIN Destinations d ON tp.destination_id = d.destination_id
SET tp.season = 'Summer'
WHERE d.category = 'Beach';

## discount

UPDATE TourPackages tp
JOIN Destinations d ON tp.destination_id = d.destination_id
SET tp.price = CASE 
    WHEN d.category = 'Beach' THEN tp.price * 0.85
    WHEN d.category = 'Hill Station' THEN tp.price * 0.90
    WHEN d.category = 'Heritage' THEN tp.price * 0.95
    WHEN d.category = 'Adventure' THEN tp.price * 0.80
    ELSE tp.price
END;

-- Destinations with packages
SELECT d.destination_name, d.country, d.city, tp.package_name, tp.price, tp.season
FROM Destinations d
JOIN TourPackages tp ON d.destination_id = tp.destination_id;

-- Packages with price > 20000
SELECT * FROM TourPackages
WHERE price > 20000;

-- Average rating by category
SELECT category, AVG(rating) AS avg_rating
FROM Destinations
GROUP BY category;











