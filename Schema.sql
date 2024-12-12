-- Schema for PolicyHolders Table
CREATE TABLE PolicyHolders
(
    PolicyHolderID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    NationalID NVARCHAR(10) UNIQUE NOT NULL,
    PhoneNumber NVARCHAR(15),
    Address NVARCHAR(255)
);

-- Schema for Insureds Table
CREATE TABLE Insureds
(
    InsuredID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    BirthDate DATE NOT NULL,
    Gender NVARCHAR(10) NOT NULL,
    Address NVARCHAR(255),
    PhoneNumber NVARCHAR(15)
);

-- Schema for InsurancePolicies Table
CREATE TABLE InsurancePolicies
(
    PolicyID INT IDENTITY(1,1) PRIMARY KEY,
    PolicyNumber NVARCHAR(20) NOT NULL UNIQUE,
    InsurerID INT NOT NULL,
    InsuredID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PremiumAmount DECIMAL(10, 2) NOT NULL,
    PolicyType NVARCHAR(50) NOT NULL,
    CoverageAmount DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (InsurerID) REFERENCES PolicyHolders(PolicyHolderID),
    FOREIGN KEY (InsuredID) REFERENCES Insureds(InsuredID)
);

-- Schema for Agents Table
CREATE TABLE Agents
(
    AgentID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(15) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    CommissionRate DECIMAL(5, 2) NOT NULL
);

-- Schema for Transactions Table
CREATE TABLE Transactions
(
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    PolicyID INT NOT NULL,
    AgentID INT NOT NULL,
    TransactionDate DATE NOT NULL,
    TransactionType NVARCHAR(50) NOT NULL,
    Amount DECIMAL(15, 2) NOT NULL,
    Status NVARCHAR(50) NOT NULL,
    FOREIGN KEY (PolicyID) REFERENCES InsurancePolicies(PolicyID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID)
);

-- Schema for Reports Table
CREATE TABLE Reports
(
    ReportID INT IDENTITY(1,1) PRIMARY KEY,
    ReportName NVARCHAR(100) NOT NULL,
    ReportType NVARCHAR(50) NOT NULL,
    GeneratedDate DATE NOT NULL,
    FilterCriteria NVARCHAR(255),
    Data NVARCHAR(MAX),
    CreatedBy NVARCHAR(50) NOT NULL
);
