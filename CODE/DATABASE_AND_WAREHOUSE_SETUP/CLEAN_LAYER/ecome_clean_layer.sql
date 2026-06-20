-- ============================================================
-- Table: CUSTOMERS_CLEAN
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.CLEAN.CUSTOMERS_CLEAN (
    CUSTOMER_ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    EMAIL VARCHAR NOT NULL UNIQUE,
    PHONE VARCHAR NOT NULL,
    COUNTRY VARCHAR NOT NULL,
    CREATED_AT DATE NOT NULL
);

-- ============================================================
-- Table: ORDERS_CLEAN
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.CLEAN.ORDERS_CLEAN (
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT NOT NULL,
    ORDER_DATE DATE NOT NULL,
    STATUS VARCHAR NOT NULL,
    TOTAL_AMOUNT DECIMAL NOT NULL,
    PAYMENT_ID INT NOT NULL,
    SHIPMENT_ID INT NOT NULL,
    CONSTRAINT FK_ORDER_CUSTOMER FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS_CLEAN(CUSTOMER_ID)
    -- Removed FK_ORDER_PAYMENT and FK_ORDER_SHIPMENT to avoid circular dependency
);

-- ============================================================
-- Table: SHIPMENTS_CLEAN
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.CLEAN.SHIPMENTS_CLEAN (
    SHIPMENT_ID INT PRIMARY KEY,
    ORDER_ID INT NOT NULL,
    SHIP_DATE DATE NOT NULL,
    DELIVERY_DATE DATE NOT NULL,
    CARRIER VARCHAR NOT NULL,
    STATUS VARCHAR NOT NULL
    -- Removed FK to ORDERS_CLEAN to avoid circular dependency
);

-- ============================================================
-- Table: PAYMENTS_CLEAN
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.CLEAN.PAYMENTS_CLEAN (
    PAYMENT_ID INT PRIMARY KEY,
    ORDER_ID INT NOT NULL,
    PAYMENT_METHOD VARCHAR NOT NULL,
    PAYMENT_DATE DATE NOT NULL,
    AMOUNT DECIMAL NOT NULL,
    CURRENCY VARCHAR NOT NULL
    -- Removed FK to ORDERS_CLEAN to avoid circular dependency
);

-- ============================================================
-- Table: PRODUCTS_CLEAN
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.CLEAN.PRODUCTS_CLEAN (
    PRODUCT_ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    CATEGORY VARCHAR NOT NULL,
    PRICE DECIMAL NOT NULL,
    CURRENCY VARCHAR NOT NULL,
    STOCK_QUANTITY INT NOT NULL,
    SUPPLIER_ID INT NOT NULL
);

-- ============================================================
-- Table: EMPLOYEES_CLEAN
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.CLEAN.EMPLOYEES_CLEAN (
    EMPLOYEE_ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    ROLE VARCHAR NOT NULL,
    DEPARTMENT VARCHAR NOT NULL,
    COUNTRY VARCHAR NOT NULL,
    HIRED_DATE DATE NOT NULL
);