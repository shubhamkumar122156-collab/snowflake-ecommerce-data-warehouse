-- ============================================================
-- Table: STAGE_CUSTOMERS
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.STAGE.STAGE_CUSTOMERS (
    CUSTOMER_ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    EMAIL VARCHAR NOT NULL UNIQUE,
    PHONE VARCHAR NOT NULL,
    COUNTRY VARCHAR NOT NULL,
    CREATED_AT DATE NOT NULL
);

-- ============================================================
-- Table: STAGE_ORDERS
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.STAGE.STAGE_ORDERS (
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT NOT NULL,
    ORDER_DATE DATE NOT NULL,
    STATUS VARCHAR NOT NULL,
    TOTAL_AMOUNT DECIMAL NOT NULL,
    PAYMENT_ID INT NOT NULL,
    SHIPMENT_ID INT NOT NULL,
    CONSTRAINT FK_ORDER_CUSTOMER FOREIGN KEY (CUSTOMER_ID) REFERENCES STAGE_CUSTOMERS(CUSTOMER_ID)
    -- NOTE: FK_ORDER_PAYMENT and FK_ORDER_SHIPMENT removed until STAGE_PAYMENTS and STAGE_SHIPMENTS are defined
);
-- ============================================================
-- Table: STAGE_PAYMENTS
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.STAGE.STAGE_PAYMENTS (
    PAYMENT_ID INT PRIMARY KEY,
    ORDER_ID INT NOT NULL,
    PAYMENT_METHOD VARCHAR NOT NULL,
    PAYMENT_DATE DATE NOT NULL,
    AMOUNT DECIMAL NOT NULL,
    CURRENCY VARCHAR NOT NULL
    -- Removed FK to STAGE_ORDERS to avoid circular dependency
);

-- ============================================================
-- Table: STAGE_SHIPMENTS
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.STAGE.STAGE_SHIPMENTS (
    SHIPMENT_ID INT PRIMARY KEY,
    ORDER_ID INT NOT NULL,
    SHIP_DATE DATE NOT NULL,
    DELIVERY_DATE DATE NOT NULL,
    CARRIER VARCHAR NOT NULL,
    STATUS VARCHAR NOT NULL
    -- Removed FK to STAGE_ORDERS to avoid circular dependency
);

-- ============================================================
-- Table: STAGE_PRODUCTS
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.STAGE.STAGE_PRODUCTS (
    PRODUCT_ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    CATEGORY VARCHAR NOT NULL,
    PRICE DECIMAL NOT NULL,
    CURRENCY VARCHAR NOT NULL,
    STOCK_QUANTITY INT NOT NULL,
    SUPPLIER_ID INT NOT NULL
);

-- ============================================================
-- Table: STAGE_EMPLOYEES
-- ============================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.STAGE.STAGE_EMPLOYEES (
    EMPLOYEE_ID INT PRIMARY KEY,
    NAME VARCHAR NOT NULL,
    ROLE VARCHAR NOT NULL,
    DEPARTMENT VARCHAR NOT NULL,
    COUNTRY VARCHAR NOT NULL,
    HIRED_DATE DATE NOT NULL
);