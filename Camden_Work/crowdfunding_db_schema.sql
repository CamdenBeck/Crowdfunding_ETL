-- Create table for categories
CREATE TABLE category (
    category_id VARCHAR(255) PRIMARY KEY,
    category TEXT NOT NULL
);

-- Create table for sub-categories
CREATE TABLE subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory TEXT NOT NULL,
);

-- Create table for contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL,
);

-- Create table for campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL FOREIGN KEY REFERENCES contacts(contact_id),
    company_name TEXT NOT NULL,
    description VARCHAR(255),
    goal INT NOT NULL,
    pledged INT NOT NULL,
    outcome TEXT NOT NULL,
    backers_count INT NOT NULL,
    country TEXT NOT NULL,
    currency TEXT NOT NULL,
    launched_date VARCHAR,
    end_date VARCHAR,
    staff_pick BOOLEAN NOT NULL,
    spotlight BOOLEAN NOT NULL,
    category TEXT NOT NULL FOREIGN KEY REFERENCES category(category),
    subcategory TEXT NOT NULL FOREIGN KEY REFERENCES subcategory(subcategory),
    category_id VARCHAR(255) NOT NULL FOREIGN KEY REFERENCES category(category_id),
    subcategory_id VARCHAR(255) NOT NULL FOREIGN KEY REFERENCES subcategory(subcategory_id)
);