-- Schema Definition
-- Create tables in order to handle dependencies

-- Employee table (referenced by Project)
CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    role_type VARCHAR(50) NOT NULL,
    working_time VARCHAR(20) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

-- Scientific Field table (referenced by Project)
CREATE TABLE ScientificField (
    field_id SERIAL PRIMARY KEY,
    field_name VARCHAR(150) NOT NULL,
    description VARCHAR(255)
);

-- Department table
CREATE TABLE Department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(150) NOT NULL,
    faculty_name VARCHAR(150) NOT NULL,
    office_location VARCHAR(100)
);

-- Funding Institution table (referenced by Grant)
CREATE TABLE FundingInstitution (
    institution_id SERIAL PRIMARY KEY,
    institution_name VARCHAR(200) NOT NULL,
    institution_type VARCHAR(50) NOT NULL,
    country VARCHAR(100) NOT NULL,
    contact_email VARCHAR(150)
);

-- Project table
CREATE TABLE Project (
    project_id SERIAL PRIMARY KEY,
    pc_id INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_budget DECIMAL(12,2) NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- Grant table
CREATE TABLE Grant (
    grant_id SERIAL PRIMARY KEY,
    amount DECIMAL(12,2) NOT NULL,
    grant_status VARCHAR(30) NOT NULL,
    project_id INTEGER NOT NULL,
    institution_id INTEGER NOT NULL
);

-- Deliverable table
CREATE TABLE Deliverable (
    deliverable_id SERIAL PRIMARY KEY,
    deliverable_name VARCHAR(200) NOT NULL,
    deliverable_type VARCHAR(50) NOT NULL,
    submission_date DATE NOT NULL,
    approval_status VARCHAR(30) NOT NULL,
    project_id INTEGER NOT NULL
);

-- Duty table
CREATE TABLE Duty (
    duty_id SERIAL PRIMARY KEY,
    duty_name VARCHAR(150) NOT NULL,
    description VARCHAR(255),
    time_spent DECIMAL(5,2) NOT NULL,
    project_id INTEGER NOT NULL
);

-- Payment table
CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    amount DECIMAL(12,2) NOT NULL,
    expected_payment_date DATE NOT NULL,
    actual_payment_date DATE,
    grant_id INTEGER NOT NULL
);

-- WorksOn junction table (many-to-many between Employee and Duty)
CREATE TABLE WorksOn (
    employee_id INTEGER NOT NULL,
    duty_id INTEGER NOT NULL,
    PRIMARY KEY (employee_id, duty_id)
);

-- ProjectField junction table (many-to-many between Project and ScientificField)
CREATE TABLE ProjectField (
    project_id INTEGER NOT NULL,
    field_id INTEGER NOT NULL,
    PRIMARY KEY (project_id, field_id)
);

-- Transaction table
CREATE TABLE Transaction (
    transaction_id SERIAL PRIMARY KEY,
    project_id INTEGER NOT NULL,
    purpose VARCHAR(255) NOT NULL,
    amount INTEGER NOT NULL,
    receiver VARCHAR(255) NOT NULL
);
