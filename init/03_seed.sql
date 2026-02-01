-- Seed Data
-- Insert mock data for testing

INSERT INTO Employee (first_name, last_name, role_type, working_time, salary) VALUES
('Alice', 'Johnson', 'Professor', 'Full-time', 6500.00),
('Bob', 'Smith', 'Professor', 'Full-time', 6200.00),
('Carol', 'Williams', 'Post-doc', 'Full-time', 4500.00),
('David', 'Brown', 'Post-doc', 'Part-time', 2500.00),
('Emma', 'Davis', 'PhD', 'Full-time', 2500.00),
('Frank', 'Miller', 'PhD', 'Full-time', 2600.00),
('Grace', 'Wilson', 'Professor', 'Part-time', 3100.00),
('Henry', 'Moore', 'Post-doc', 'Full-time', 4700.00),
('Iris', 'Taylor', 'PhD', 'Part-time', 1400.00),
('Jack', 'Anderson', 'Professor', 'Full-time', 6800.00);

INSERT INTO ScientificField (field_name, description) VALUES
('Artificial Intelligence', 'Machine learning and AI systems'),
('Quantum Computing', 'Quantum algorithms and hardware'),
('Biotechnology', 'Biological engineering and research'),
('Climate Science', 'Environmental and climate studies'),
('Neuroscience', 'Brain and cognitive research'),
('Robotics', 'Robotic systems and automation'),
('Cybersecurity', 'Information security research'),
('Renewable Energy', 'Sustainable energy solutions'),
('Data Science', 'Big data and analytics'),
('Materials Science', 'Advanced materials research');

INSERT INTO Department (department_name, faculty_name, office_location) VALUES
('Computer Science', 'Faculty of Engineering', 'Building A, Room 201'),
('Physics', 'Faculty of Natural Sciences', 'Building B, Room 305'),
('Biology', 'Faculty of Life Sciences', 'Building C, Room 102'),
('Chemistry', 'Faculty of Natural Sciences', 'Building D, Room 401'),
('Mathematics', 'Faculty of Engineering', 'Building A, Room 150'),
('Environmental Science', 'Faculty of Natural Sciences', 'Building E, Room 210'),
('Electrical Engineering', 'Faculty of Engineering', 'Building F, Room 320'),
('Mechanical Engineering', 'Faculty of Engineering', 'Building G, Room 115'),
('Biomedical Engineering', 'Faculty of Life Sciences', 'Building H, Room 205'),
('Civil Engineering', 'Faculty of Engineering', 'Building I, Room 405');

INSERT INTO FundingInstitution (institution_name, institution_type, country, contact_email) VALUES
('European Research Council', 'EU', 'Belgium', 'contact@erc.europa.eu'),
('National Science Foundation', 'National', 'United States', 'info@nsf.gov'),
('German Research Foundation', 'National', 'Germany', 'contact@dfg.de'),
('TechCorp Foundation', 'Private', 'United States', 'grants@techcorp.com'),
('UK Research and Innovation', 'National', 'United Kingdom', 'info@ukri.org'),
('Horizon Europe', 'EU', 'Belgium', 'contact@horizon.eu'),
('Swiss National Science Foundation', 'National', 'Switzerland', 'info@snf.ch'),
('Innovation Fund Denmark', 'National', 'Denmark', 'contact@innofond.dk'),
('BioTech Ventures', 'Private', 'Netherlands', 'funding@biotechventures.nl'),
('Austrian Science Fund', 'National', 'Austria', 'office@fwf.ac.at');

INSERT INTO Project (pc_id, title, start_date, end_date, status) VALUES
(1, 'AI for Climate Prediction', '2024-01-15', '2026-12-31', 'Active'),
(2, 'Quantum Error Correction', '2023-06-01', '2026-05-31', 'Active'),
(3, 'CRISPR Gene Therapy', '2024-03-01', '2027-02-28', 'Active'),
(10, 'Neural Network Optimization', '2025-01-01', '2027-12-31', 'Planned'),
(7, 'Autonomous Drone Systems', '2023-09-01', '2025-08-31', 'Active'),
(3, 'Cybersecurity Framework', '2024-07-01', '2026-06-30', 'Active'),
(5, 'Solar Panel Efficiency', '2022-04-01', '2025-03-31', 'Active'),
(8, 'Brain-Computer Interface', '2023-11-15', '2026-11-14', 'Active'),
(2, 'Smart Grid Technology', '2021-05-01', '2024-04-30', 'Completed'),
(6, 'Biodegradable Plastics', '2024-02-01', '2026-01-31', 'Active');

INSERT INTO "Grant" (amount, grant_status, project_id, institution_id) VALUES
(850000.00, 'Paid', 1, 1),
(600000.00, 'Paid', 2, 2),
(600000.00, 'Approved', 2, 6),
(950000.00, 'Approved', 3, 9),
(750000.00, 'Pending', 4, 4),
(650000.00, 'Paid', 5, 3),
(550000.00, 'Approved', 6, 7),
(480000.00, 'Paid', 7, 8),
(920000.00, 'Approved', 8, 1),
(780000.00, 'Paid', 9, 5);

INSERT INTO Deliverable (deliverable_name, deliverable_type, submission_date, approval_status, project_id) VALUES
('Climate Model v1.0', 'Software', '2025-06-30', 'Approved', 1),
('Quarterly Progress Report', 'Report', '2024-09-15', 'Approved', 2),
('Gene Therapy Research Paper', 'Paper', '2025-11-20', 'Pending', 3),
('Neural Network Library', 'Software', '2026-03-31', 'Pending', 4),
('Drone Control System', 'Software', '2024-12-15', 'Approved', 5),
('Security Framework Documentation', 'Report', '2025-08-30', 'Approved', 6),
('Solar Efficiency Analysis', 'Paper', '2024-10-25', 'Approved', 7),
('BCI Prototype', 'Software', '2025-07-15', 'Pending', 8),
('Smart Grid Final Report', 'Report', '2024-04-01', 'Approved', 9),
('Plastic Decomposition Study', 'Paper', '2025-09-10', 'Pending', 10),
('AI Model Training Results', 'Report', '2025-12-15', 'Pending', 1),
('Quantum Circuit Design', 'Paper', '2024-08-20', 'Approved', 2),
('CRISPR Safety Protocol', 'Report', '2025-05-10', 'Approved', 3),
('Network Optimization Tool', 'Software', '2026-01-20', 'Pending', 4),
('Drone Flight Data Analysis', 'Report', '2024-11-30', 'Approved', 5),
('Penetration Testing Report', 'Report', '2025-10-15', 'Pending', 6),
('Solar Panel Performance Data', 'Report', '2024-06-18', 'Approved', 7),
('Neural Signal Processing Paper', 'Paper', '2025-09-25', 'Pending', 8),
('Grid Load Balancing Software', 'Software', '2024-02-28', 'Approved', 9),
('Biodegradation Timeline Study', 'Paper', '2025-07-22', 'Approved', 10);

INSERT INTO Duty (duty_name, description, project_id) VALUES
('Data Collection', 'Gather climate data from sensors', 1),
('Algorithm Development', 'Develop quantum error correction algorithms', 2),
('Lab Experiments', 'Conduct CRISPR experiments', 3),
('Model Training', 'Train neural network models', 4),
('Field Testing', 'Test drones in various conditions', 5),
('Security Audit', 'Perform security vulnerability assessment', 6),
('Panel Installation', 'Install and monitor solar panels', 7),
('Signal Processing', 'Process brain signals', 8),
('Grid Integration', 'Integrate smart grid components', 9),
('Material Testing', 'Test plastic degradation', 10);

INSERT INTO Payment (amount, expected_payment_date, actual_payment_date, grant_id) VALUES
(425000.00, '2024-06-01', '2024-06-03', 1),
(425000.00, '2025-06-01', NULL, 1),
(300000.00, '2024-03-01', '2024-03-05', 2),
(475000.00, '2025-01-15', NULL, 4),
(325000.00, '2024-01-10', '2024-01-12', 6),
(275000.00, '2025-07-01', NULL, 7),
(240000.00, '2023-12-15', '2023-12-20', 8),
(240000.00, '2024-12-15', '2024-12-18', 8),
(460000.00, '2024-10-01', NULL, 9),
(390000.00, '2022-08-01', '2022-08-05', 10);

INSERT INTO WorksOn (employee_id, duty_id, time_spent) VALUES
(1, 1, 80.50), (5, 1, 40.00),
(2, 2, 150.75), (6, 2, 100.00),
(3, 3, 180.00),
(4, 4, 60.25), (9, 4, 35.00),
(7, 5, 140.50),
(8, 6, 85.00),
(10, 7, 110.75);

INSERT INTO ProjectField (project_id, field_id) VALUES
(1, 1), (1, 4),
(2, 2),
(3, 3),
(4, 1), (4, 9),
(5, 6),
(6, 7),
(7, 8),
(8, 5),
(9, 8);

INSERT INTO Transaction (project_id, purpose, amount, receiver) VALUES
(1, 'Server hardware purchase', 15000, 'TechSupply Inc'),
(2, 'Quantum computing equipment', 85000, 'Quantum Systems Ltd'),
(3, 'Laboratory supplies', 12500, 'BioLab Suppliers'),
(4, 'GPU cluster for training', 45000, 'CloudCompute Services'),
(5, 'Drone components', 8500, 'AeroTech Solutions'),
(6, 'Security software licenses', 5500, 'SecureNet Corp'),
(7, 'Solar panel materials', 22000, 'GreenEnergy Supply'),
(8, 'EEG equipment', 18000, 'MedTech Devices'),
(9, 'Grid monitoring sensors', 31000, 'SmartGrid Systems'),
(10, 'Biodegradable polymers', 9500, 'EcoMaterials Ltd'),
(1, 'Cloud storage subscription', 3200, 'CloudData Solutions'),
(1, 'Data collection sensors', 8700, 'SensorTech Ltd'),
(2, 'Quantum simulation software', 12000, 'QuantumSoft Inc'),
(3, 'Gene sequencing services', 18500, 'GenomicsLab Co'),
(3, 'Petri dishes and cultures', 4200, 'LabSupply Direct'),
(4, 'Training dataset licenses', 6800, 'DataMarket Inc'),
(5, 'Drone batteries and chargers', 2400, 'PowerTech Solutions'),
(6, 'Network security tools', 7300, 'CyberDefense Ltd'),
(7, 'Installation equipment', 5600, 'GreenInstall Co'),
(8, 'Medical-grade electrodes', 9200, 'MedicalSupply Plus'),
(9, 'Smart meters', 14500, 'GridTech Supplies'),
(10, 'Environmental testing kit', 3800, 'EcoTest Labs');
