-- ============================================================
-- Table: RAW_CUSTOMERS
-- Purpose: Store raw customer data for e-commerce development
-- Note: No constraints applied (fully flexible raw layer)
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.RAW.RAW_CUSTOMERS

    CUSTOMER_ID INT,        -- Customer identifier (no PK enforced)
    NAME VARCHAR,           -- Full name of the customer
    EMAIL VARCHAR,          -- Contact email address
    PHONE VARCHAR,          -- Mobile number
    COUNTRY VARCHAR,        -- Country of residence
    CREATED_AT DATE         -- Account creation date)
     ; 
-- ============================================================
-- Table: RAW_ORDERS
-- Purpose: Store raw order data for e-commerce development
-- Note: No PK/FK/Unique constraints applied in RAW layer
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.RAW.RAW_ORDERS
(
    ORDER_ID INT,            -- Order identifier (no PK enforced)
    CUSTOMER_ID INT,         -- Customer placing the order (no FK enforced)
    ORDER_DATE DATE,         -- Date when the order was placed
    STATUS VARCHAR,          -- Current status (pending, shipped, delivered, cancelled)
    TOTAL_AMOUNT DECIMAL,    -- Total monetary value of the order
    PAYMENT_ID INT,          -- Payment record reference (no FK enforced)
    SHIPMENT_ID INT          -- Shipment record reference (no FK enforced)
);
-- ============================================================
-- Table: RAW_PAYMENTS
-- Purpose: Store raw payment data for e-commerce development
-- Note: No PK/FK/Unique constraints applied in RAW layer
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.RAW.RAW_PAYMENTS
(
    PAYMENT_ID INT,          -- Payment identifier (no PK enforced)
    ORDER_ID INT,            -- Associated order reference (no FK enforced)
    PAYMENT_METHOD VARCHAR,  -- Method used (credit card, PayPal, UPI, etc.)
    PAYMENT_DATE DATE,       -- Date of payment
    AMOUNT DECIMAL,          -- Amount paid
    CURRENCY VARCHAR         -- Currency of payment
);
-- ============================================================
-- Table: RAW_SHIPMENTS
-- Purpose: Store raw shipment data for e-commerce development
-- Note: No PK/FK/Unique constraints applied in RAW layer
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.RAW.RAW_SHIPMENTS
(
    SHIPMENT_ID INT,        -- Shipment identifier (no PK enforced)
    ORDER_ID INT,           -- Associated order reference (no FK enforced)
    SHIP_DATE DATE,         -- Date shipment was dispatched
    DELIVERY_DATE DATE,     -- Date shipment was delivered
    CARRIER VARCHAR,        -- Shipping carrier (FedEx, DHL, UPS, etc.)
    STATUS VARCHAR          -- Current shipment status (in transit, delivered, delayed)
);
-- ============================================================
-- Table: RAW_PRODUCTS
-- Purpose: Store raw product data for e-commerce development
-- Note: No PK/FK/Unique constraints applied in RAW layer
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.RAW.RAW_PRODUCTS
(
    PRODUCT_ID INT,          -- Product identifier (no PK enforced)
    NAME VARCHAR,            -- Product name
    CATEGORY VARCHAR,        -- Product category (electronics, clothing, etc.)
    PRICE DECIMAL,           -- Unit price of the product
    CURRENCY VARCHAR,        -- Currency code (USD, INR, EUR, etc.)
    STOCK_QUANTITY INT,      -- Available inventory count
    SUPPLIER_ID INT          -- Supplier reference (no FK enforced)
);

-- ============================================================
-- Table: RAW_EMPLOYEES
-- Purpose: Store raw employee data for e-commerce development
-- Note: No PK/FK/Unique constraints applied in RAW layer
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.RAW.RAW_EMPLOYEES
(
    EMPLOYEE_ID INT,        -- Employee identifier (no PK enforced)
    NAME VARCHAR,           -- Full name of the employee
    ROLE VARCHAR,           -- Job role or designation
    DEPARTMENT VARCHAR,     -- Department name
    COUNTRY VARCHAR,        -- Country of employment
    HIRED_DATE DATE         -- Date of joining the company
);