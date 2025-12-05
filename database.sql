CREATE DATABASE IF NOT EXISTS security_webgis;
USE security_webgis;

CREATE TABLE IF NOT EXISTS dangerous_areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    severity ENUM('Low', 'Medium', 'High', 'Critical') DEFAULT 'Medium',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample Data
INSERT INTO dangerous_areas (name, description, latitude, longitude, severity) VALUES 
('Zone Alpha', 'High crime rate reported in this sector.', -6.200000, 106.816666, 'High'),
('Sector 7', 'Minor vandalism incidents.', -6.210000, 106.820000, 'Low'),
('North Bridge', 'Structural damage risk.', -6.190000, 106.830000, 'Medium'),
('Central Station', 'Pickpocket hotspot.', -6.205000, 106.825000, 'Medium'),
('East Industrial Park', 'Chemical spill hazard.', -6.180000, 106.850000, 'Critical');
