-- Create table Manger with basic columns
CREATE TABLE Manger (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    birth_date DATE,
    address VARCHAR(100)
);

-- Remove the 'address' column from Manger
ALTER TABLE Manger 
DROP COLUMN address;

-- Add new address-related columns: city_address and street
ALTER TABLE Manger 
ADD (
    city_address VARCHAR(100),
    street VARCHAR(100)
);

-- Rename the column 'name' to 'full_name'
ALTER TABLE Manger
RENAME COLUMN name TO full_name;

-- Create a new table 'Owner' with selected columns from Manger but no data
CREATE TABLE Owner AS
SELECT id, full_name, birth_date
FROM Manger
WHERE 1 = 0;

-- Create a trigger to prevent INSERT, UPDATE, DELETE on Manger (make it read-only)
CREATE OR REPLACE TRIGGER stop_dml_on_manger
BEFORE INSERT OR UPDATE OR DELETE ON Manger
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'This table is read-only.');
END;

-- Rename table Manger to Master
ALTER TABLE Manger RENAME TO Master;

-- Drop the Master table including any constraints (foreign keys etc.)
DROP TABLE Master CASCADE CONSTRAINTS;

-- Drop the Owner table including any constraints
DROP TABLE Owner CASCADE CONSTRAINTS;
