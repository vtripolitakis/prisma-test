-- CreateTable
CREATE TABLE "Category" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "CategoryName" TEXT,
    "Description" TEXT
);

-- CreateTable
CREATE TABLE "Customer" (
    "Id" TEXT PRIMARY KEY,
    "CompanyName" TEXT,
    "ContactName" TEXT,
    "ContactTitle" TEXT,
    "Address" TEXT,
    "City" TEXT,
    "Region" TEXT,
    "PostalCode" TEXT,
    "Country" TEXT,
    "Phone" TEXT,
    "Fax" TEXT
);

-- CreateTable
CREATE TABLE "CustomerCustomerDemo" (
    "Id" TEXT PRIMARY KEY,
    "CustomerTypeId" TEXT
);

-- CreateTable
CREATE TABLE "CustomerDemographic" (
    "Id" TEXT PRIMARY KEY,
    "CustomerDesc" TEXT
);

-- CreateTable
CREATE TABLE "Employee" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "LastName" TEXT,
    "FirstName" TEXT,
    "Title" TEXT,
    "TitleOfCourtesy" TEXT,
    "BirthDate" TEXT,
    "HireDate" TEXT,
    "Address" TEXT,
    "City" TEXT,
    "Region" TEXT,
    "PostalCode" TEXT,
    "Country" TEXT,
    "HomePhone" TEXT,
    "Extension" TEXT,
    "Photo" BLOB,
    "Notes" TEXT,
    "ReportsTo" INTEGER,
    "PhotoPath" TEXT
);

-- CreateTable
CREATE TABLE "EmployeeTerritory" (
    "Id" TEXT PRIMARY KEY,
    "EmployeeId" INTEGER NOT NULL,
    "TerritoryId" TEXT
);

-- CreateTable
CREATE TABLE "Order" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "CustomerId" TEXT,
    "EmployeeId" INTEGER NOT NULL,
    "OrderDate" TEXT,
    "RequiredDate" TEXT,
    "ShippedDate" TEXT,
    "ShipVia" INTEGER,
    "Freight" DECIMAL NOT NULL,
    "ShipName" TEXT,
    "ShipAddress" TEXT,
    "ShipCity" TEXT,
    "ShipRegion" TEXT,
    "ShipPostalCode" TEXT,
    "ShipCountry" TEXT
);

-- CreateTable
CREATE TABLE "OrderDetail" (
    "Id" TEXT PRIMARY KEY,
    "OrderId" INTEGER NOT NULL,
    "ProductId" INTEGER NOT NULL,
    "UnitPrice" DECIMAL NOT NULL,
    "Quantity" INTEGER NOT NULL,
    "Discount" REAL NOT NULL
);

-- CreateTable
CREATE TABLE "Product" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "ProductName" TEXT,
    "SupplierId" INTEGER NOT NULL,
    "CategoryId" INTEGER NOT NULL,
    "QuantityPerUnit" TEXT,
    "UnitPrice" DECIMAL NOT NULL,
    "UnitsInStock" INTEGER NOT NULL,
    "UnitsOnOrder" INTEGER NOT NULL,
    "ReorderLevel" INTEGER NOT NULL,
    "Discontinued" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "Region" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "RegionDescription" TEXT
);

-- CreateTable
CREATE TABLE "Shipper" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "CompanyName" TEXT,
    "Phone" TEXT
);

-- CreateTable
CREATE TABLE "Supplier" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "CompanyName" TEXT,
    "ContactName" TEXT,
    "ContactTitle" TEXT,
    "Address" TEXT,
    "City" TEXT,
    "Region" TEXT,
    "PostalCode" TEXT,
    "Country" TEXT,
    "Phone" TEXT,
    "Fax" TEXT,
    "HomePage" TEXT
);

-- CreateTable
CREATE TABLE "Territory" (
    "Id" TEXT PRIMARY KEY,
    "TerritoryDescription" TEXT,
    "RegionId" INTEGER NOT NULL
);
