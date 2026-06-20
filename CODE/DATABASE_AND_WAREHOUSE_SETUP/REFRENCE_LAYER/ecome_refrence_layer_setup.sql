  -- =======================================================================================
-- COUNTRY MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.COUNTRY_MASTER (
    COUNTRY_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    COUNTRY_CODE VARCHAR,
    COUNTRY_NAME VARCHAR,
    REGION_NAME VARCHAR
);

-- =======================================================================================
-- STATE MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.STATE_MASTER (
    STATE_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    COUNTRY_ID INT,
    STATE_NAME VARCHAR,
    STATE_CODE VARCHAR,
    CONSTRAINT FK_STATE_COUNTRY FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY_MASTER(COUNTRY_ID)
);

-- =======================================================================================
-- CITY MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.CITY_MASTER (
    CITY_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    STATE_ID INT,
    CITY_NAME VARCHAR,
    CONSTRAINT FK_CITY_STATE FOREIGN KEY (STATE_ID) REFERENCES STATE_MASTER(STATE_ID)
);

-- =======================================================================================
-- PAYMENT METHOD MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.PAYMENT_METHOD_MASTER (
    PAYMENT_METHOD_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    PAYMENT_METHOD_NAME VARCHAR,
    PAYMENT_PROVIDER VARCHAR,
    ACTIVE_FLAG BOOLEAN
);

-- =======================================================================================
-- SHIPMENT STATUS MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.SHIPMENT_STATUS_MASTER (
    SHIPMENT_STATUS_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    STATUS_NAME VARCHAR,
    STATUS_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- ORDER STATUS MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.ORDER_STATUS_MASTER (
    ORDER_STATUS_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    STATUS_NAME VARCHAR,
    STATUS_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- PRODUCT CATEGORY MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.PRODUCT_CATEGORY_MASTER (
    CATEGORY_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    CATEGORY_NAME VARCHAR,
    CATEGORY_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- CURRENCY MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.CURRENCY_MASTER (
    CURRENCY_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    CURRENCY_CODE VARCHAR,
    CURRENCY_NAME VARCHAR,
    CURRENCY_SYMBOL VARCHAR
);

-- =======================================================================================
-- EMPLOYEE ROLE MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.EMPLOYEE_ROLE_MASTER (
    ROLE_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ROLE_NAME VARCHAR,
    ROLE_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- RETURN REASON MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.RETURN_REASON_MASTER (
    RETURN_REASON_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    REASON_NAME VARCHAR,
    REASON_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- CUSTOMER SEGMENT MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.CUSTOMER_SEGMENT_MASTER (
    CUSTOMER_SEGMENT_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    SEGMENT_NAME VARCHAR,
    SEGMENT_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- DISCOUNT TYPE MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.DISCOUNT_TYPE_MASTER (
    DISCOUNT_TYPE_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    DISCOUNT_TYPE_NAME VARCHAR,
    DISCOUNT_PERCENTAGE DECIMAL(5,2),
    ACTIVE_FLAG BOOLEAN
);

-- =======================================================================================
-- TAX CATEGORY MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.TAX_CATEGORY_MASTER (
    TAX_CATEGORY_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    TAX_CATEGORY_NAME VARCHAR,
    TAX_PERCENTAGE DECIMAL(5,2)
);

-- =======================================================================================
-- SUPPLIER MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.SUPPLIER_MASTER (
    SUPPLIER_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    SUPPLIER_NAME VARCHAR,
    CONTACT_EMAIL VARCHAR,
    COUNTRY_NAME VARCHAR
);

-- =======================================================================================
-- BRAND MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.BRAND_MASTER (
    BRAND_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    BRAND_NAME VARCHAR,
    BRAND_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- WAREHOUSE MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.WAREHOUSE_MASTER (
    WAREHOUSE_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    WAREHOUSE_NAME VARCHAR,
    CITY_NAME VARCHAR,
    COUNTRY_NAME VARCHAR
);

-- =======================================================================================
-- REGION MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.REGION_MASTER (
    REGION_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    REGION_NAME VARCHAR,
    REGION_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- DELIVERY TYPE MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.DELIVERY_TYPE_MASTER (
    DELIVERY_TYPE_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    DELIVERY_TYPE_NAME VARCHAR,
    DELIVERY_DESCRIPTION VARCHAR
);

-- =======================================================================================
-- MEMBERSHIP TYPE MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.MEMBERSHIP_TYPE_MASTER (
    MEMBERSHIP_TYPE_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    MEMBERSHIP_NAME VARCHAR,
    MEMBERSHIP_LEVEL VARCHAR,
    ACTIVE_FLAG BOOLEAN
);

-- =======================================================================================
-- ORDER PRIORITY MASTER
-- =======================================================================================
CREATE OR REPLACE TABLE ECOM_DEV_DB.REFERENCE.ORDER_PRIORITY_MASTER (
    ORDER_PRIORITY_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    PRIORITY_NAME VARCHAR,
    PRIORITY_LEVEL INT,
    PRIORITY_DESCRIPTION VARCHAR
);