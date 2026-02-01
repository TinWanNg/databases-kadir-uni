-- Constraints & Indexes
-- Add foreign keys, indexes, and other constraints

-- Foreign Keys
ALTER TABLE Project
    ADD CONSTRAINT fk_project_pc FOREIGN KEY (pc_id) REFERENCES Employee(employee_id);

ALTER TABLE "Grant"
    ADD CONSTRAINT fk_grant_project FOREIGN KEY (project_id) REFERENCES Project(project_id),
    ADD CONSTRAINT fk_grant_institution FOREIGN KEY (institution_id) REFERENCES FundingInstitution(institution_id);

ALTER TABLE Deliverable
    ADD CONSTRAINT fk_deliverable_project FOREIGN KEY (project_id) REFERENCES Project(project_id);

ALTER TABLE Duty
    ADD CONSTRAINT fk_duty_project FOREIGN KEY (project_id) REFERENCES Project(project_id);

ALTER TABLE Payment
    ADD CONSTRAINT fk_payment_grant FOREIGN KEY (grant_id) REFERENCES "Grant"(grant_id);

ALTER TABLE WorksOn
    ADD CONSTRAINT fk_workson_employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    ADD CONSTRAINT fk_workson_duty FOREIGN KEY (duty_id) REFERENCES Duty(duty_id);

ALTER TABLE ProjectField
    ADD CONSTRAINT fk_projectfield_project FOREIGN KEY (project_id) REFERENCES Project(project_id),
    ADD CONSTRAINT fk_projectfield_field FOREIGN KEY (field_id) REFERENCES ScientificField(field_id);

ALTER TABLE Transaction
    ADD CONSTRAINT fk_transaction_project FOREIGN KEY (project_id) REFERENCES Project(project_id);

-- Check Constraints
ALTER TABLE Employee
    ADD CONSTRAINT chk_employee_salary CHECK (salary > 0),
    ADD CONSTRAINT chk_employee_role CHECK (role_type IN ('Professor', 'Post-doc', 'PhD')),
    ADD CONSTRAINT chk_employee_working_time CHECK (working_time IN ('Full-time', 'Part-time'));

ALTER TABLE Project
    ADD CONSTRAINT chk_project_dates CHECK (end_date >= start_date),
    ADD CONSTRAINT chk_project_status CHECK (status IN ('Planned', 'Active', 'Completed'));

ALTER TABLE FundingInstitution
    ADD CONSTRAINT chk_institution_type CHECK (institution_type IN ('National', 'EU', 'Private'));

ALTER TABLE "Grant"
    ADD CONSTRAINT chk_grant_amount CHECK (amount > 0),
    ADD CONSTRAINT chk_grant_status CHECK (grant_status IN ('Approved', 'Paid', 'Pending'));

ALTER TABLE Deliverable
    ADD CONSTRAINT chk_deliverable_type CHECK (deliverable_type IN ('Report', 'Paper', 'Software')),
    ADD CONSTRAINT chk_deliverable_status CHECK (approval_status IN ('Pending', 'Approved', 'Rejected'));

ALTER TABLE WorksOn
    ADD CONSTRAINT chk_workson_time CHECK (time_spent >= 0);

ALTER TABLE Payment
    ADD CONSTRAINT chk_payment_amount CHECK (amount > 0);

ALTER TABLE Transaction
    ADD CONSTRAINT chk_transaction_amount CHECK (amount > 0);

-- Indexes for performance
CREATE INDEX idx_project_pc ON Project(pc_id);
CREATE INDEX idx_project_status ON Project(status);
CREATE INDEX idx_grant_project ON "Grant"(project_id);
CREATE INDEX idx_grant_institution ON "Grant"(institution_id);
CREATE INDEX idx_deliverable_project ON Deliverable(project_id);
CREATE INDEX idx_duty_project ON Duty(project_id);
CREATE INDEX idx_payment_grant ON Payment(grant_id);
CREATE INDEX idx_workson_employee ON WorksOn(employee_id);
CREATE INDEX idx_workson_duty ON WorksOn(duty_id);
CREATE INDEX idx_projectfield_project ON ProjectField(project_id);
CREATE INDEX idx_projectfield_field ON ProjectField(field_id);
CREATE INDEX idx_transaction_project ON Transaction(project_id);
