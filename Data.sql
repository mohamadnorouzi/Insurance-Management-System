-- Example for PolicyHolders table
INSERT INTO PolicyHolders
    (FullName, NationalID, PhoneNumber, Address)
VALUES
    ('John Doe', '1234567890', '09123456789', '123 Main St'),
    ('Jane Doe', '9876543210', '09123456788', '456 Elm St');

-- Example for Insureds table
INSERT INTO Insureds
    (FullName, BirthDate, Gender, Address, PhoneNumber)
VALUES
    ('Jane Smith', '1990-05-20', 'Female', '456 Elm St', '09198765432'),
    ('Jack Johnson', '1985-07-15', 'Male', '789 Pine St', '09187654321');

-- Example for InsurancePolicies table
INSERT INTO InsurancePolicies
    (PolicyNumber, InsurerID, InsuredID, StartDate, EndDate, PremiumAmount, PolicyType, CoverageAmount)
VALUES
    ('INS12345', 5, 1, '2024-01-01', '2025-01-01', 500000, 'Health Insurance', 1000000),
    ('INS67890', 6, 2, '2024-06-01', '2025-06-01', 700000, 'Car Insurance', 1500000);

-- Example for Agents table
INSERT INTO Agents
    (FullName, PhoneNumber, Email, CommissionRate)
VALUES
    ('Alice Johnson', '09123456789', 'alice.johnson@example.com', 5.0),
    ('Bob Williams', '09187654321', 'bob.williams@example.com', 4.5);

-- Example for Transactions table
INSERT INTO Transactions
    (PolicyID, AgentID, TransactionDate, TransactionType, Amount, Status)
VALUES
    (1, 1, '2024-12-12', 'Payment', 500000, 'Completed'),
    (2, 2, '2024-12-13', 'Payment', 700000, 'Pending');

-- Example for Reports table
INSERT INTO Reports
    (ReportName, ReportType, GeneratedDate, FilterCriteria, Data, CreatedBy)
VALUES
    ('Monthly Report', 'Insurance Policies', GETDATE(), 'All Active Policies', 'Sample Data', 'admin');
