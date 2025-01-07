-- Create table for categories
CREATE TABLE category (
    category_id VARCHAR(255) PRIMARY KEY,
    category TEXT NOT NULL
);

-- Create table for sub-categories
CREATE TABLE subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory TEXT NOT NULL
);

-- Create table for contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Create table for campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name TEXT,
    description VARCHAR(255),
    goal INT,
    pledged INT,
    outcome TEXT,
    backers_count INT,
    country TEXT,
    currency TEXT,
    launched_date VARCHAR,
    end_date VARCHAR,
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    category TEXT,
    subcategory TEXT,
    category_id VARCHAR(255),
    subcategory_id VARCHAR(255),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

COPY category FROM 'Resources/category.csv' DELIMITER ',' CSV HEADER;
COPY subcategory FROM 'Resources/subcategory.csv' DELIMITER ',' CSV HEADER;
COPY contacts FROM 'Resources/contacts.csv' DELIMITER ',' CSV HEADER;
COPY campaign FROM 'Resources/campaign.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;