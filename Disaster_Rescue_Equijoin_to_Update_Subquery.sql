CREATE DATABASE Disaster_Management ;

USE Disaster_Management;

CREATE TABLE Resource (
    resource_id INT PRIMARY KEY,
    resource_name VARCHAR(100) NOT NULL,
    resource_type VARCHAR(50),
    quantity INT NOT NULL,
    unit VARCHAR(30) NOT NULL,
    status VARCHAR(20) DEFAULT 'Available'
);
CREATE TABLE RescueTeam (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    leader VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    specialization VARCHAR(100),
    availability VARCHAR(20) DEFAULT 'Available'
);
INSERT INTO RescueTeam
(team_id, team_name, leader, contact, specialization, availability)
VALUES
(101, 'Rapid Response Team', 'Rajesh Patil', '9876543210', 'General Rescue', 'Available'),
(102, 'Flood Rescue Unit', 'Amit Kulkarni', '9876543211', 'Flood Rescue', 'Busy'),
(103, 'Mountain Rescue Team', 'Sagar Joshi', '9876543212', 'Mountain Rescue', 'Available'),
(104, 'Medical Rescue Team', 'Neha Sharma', '9876543213', 'Medical Emergency', 'Available'),
(105, 'Fire and Rescue Unit', 'Rohan Deshmukh', '9876543214', 'Fire Rescue', 'Busy'),
(106, 'Urban Search Team', 'Aditya More', '9876543215', 'Search and Rescue', 'Available'),
(107, 'Emergency Response Team', 'Kunal Shah', '9876543216', 'Disaster Response', 'Available'),
(108, 'Water Rescue Team', 'Akash Jadhav', '9876543217', 'Water Rescue', 'Unavailable');

INSERT INTO Resource
(resource_id, resource_name, resource_type, quantity, unit, status)
VALUES
(201, 'Drinking Water', 'Essential', 500, 'Litres', 'Available'),
(202, 'Food Packets', 'Food', 300, 'Packets', 'Available'),
(203, 'First Aid Kit', 'Medical', 75, 'Kits', 'Available'),
(204, 'Blankets', 'Shelter', 200, 'Pieces', 'Available'),
(205, 'Tents', 'Shelter', 50, 'Units', 'Available'),
(206, 'Flashlights', 'Equipment', 100, 'Pieces', 'Available'),
(207, 'Life Jackets', 'Rescue Equipment', 80, 'Pieces', 'Available'),
(208, 'Oxygen Cylinders', 'Medical', 30, 'Cylinders', 'Low'),
(209, 'Rescue Ropes', 'Rescue Equipment', 40, 'Pieces', 'Available'),
(210, 'Emergency Medicines', 'Medical', 150, 'Boxes', 'Available');