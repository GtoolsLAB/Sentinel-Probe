CREATE TABLE IF NOT EXISTS visitors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    device_type VARCHAR(50),
    os VARCHAR(50),
    browser VARCHAR(50),
    mobile_model VARCHAR(100),
    ip_address VARCHAR(45),
    country VARCHAR(100),
    region VARCHAR(100),
    city VARCHAR(100)
);
